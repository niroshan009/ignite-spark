package com.kd.depricated;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.spark.sql.*;
import org.apache.spark.sql.streaming.StreamingQueryException;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeoutException;

import static org.apache.spark.sql.functions.*;

public class IgniteMain {

    public static void main(String[] args) throws IOException, StreamingQueryException, TimeoutException, SQLException {
        Logger.getLogger("org.apache").setLevel(Level.WARN);
        SparkSession sparkSession = SparkSession.builder().appName("transformVoyageStreaming")
                .master("local[*]")
                .config("spark.sql.warehouse.dir", "file:///~/tmp")
                .config("spark.sql.catalog.demo", "org.apache.iceberg.spark.SparkCatalog")
                .config("spark.sql.catalog.demo.type", "hadoop")
                .config("spark.sql.catalog.demo.warehouse", "s3a://warehouse")
                .config("spark.sql.defaultCatalog", "demo")
                .config("fs.s3a.endpoint", "http://localhost:9000")
                .config("fs.s3a.path.style.access", "true")
                .config("fs.s3a.access.key", "admin")
                .config("fs.s3a.secret.key", "password")
                .config("spark.sql.mapKeyDedupPolicy", "LAST_WIN")
                .config("spark.hadoop.fs.s3a.impl", "org.apache.hadoop.fs.s3a.S3AFileSystem")
                .getOrCreate();




        Dataset<Row> teamsDf = sparkSession.readStream()
                .format("iceberg")
                // .option("stream-from-timestamp", String.valueOf(streamStartTimestamp)) // Start from a specific time
                // Optional: ignore overwrite or delete snapshots to prevent job failure
                .option("streaming-skip-overwrite-snapshots", "true")
                .option("streaming-skip-delete-snapshots", "true")
                .load("db.teams");


        teamsDf.printSchema();


        teamsDf.writeStream()
                .foreachBatch((var batch, var batchId) -> {


                    Dataset<Row> memberIds = batch.withColumn("extracted_teamId",
                            transform(col("teams"), team ->

                                    team.getField("teamId")

                            )
                    ).select("extracted_teamId");


                    memberIds.printSchema();
                    memberIds.show(false);


                    memberIds = memberIds.select(explode(col("extracted_teamId")).as("extracted_teamId"));


                    Dataset<Row> projectIds = batch.withColumn("extracted_projectId",
                            transform(col("projects"), team ->

                                    team.getField("projectId")

                            )
                    ).select("extracted_projectId");

                    projectIds = projectIds.select(explode(col("extracted_projectId")).as("extracted_projectId"));

                    projectIds.show();

                    List<String> projectList = new ArrayList<>();
                    List<Row> projectIdList = projectIds.collectAsList();
                    for (Row row : projectIdList) {
                        projectList.add(row.getString(0));
                    }
                    String projectIdString = String.join("','", projectList);


                    Dataset<Row> departmentIds = batch.withColumn("extracted_departmentIds",
                            transform(col("departments"), team ->

                                    team.getField("deptId")

                            )
                    ).select("extracted_departmentIds");


                    departmentIds.printSchema();
                    departmentIds.show(false);


                    departmentIds = departmentIds.select(explode(col("extracted_departmentIds")).as("extracted_departmentIds"));

                    List<String> departmentList = new ArrayList<>();
                    List<Row> departmentIdList = departmentIds.collectAsList();
                    for (Row row : departmentIdList) {
                        departmentList.add(row.getString(0));
                    }
                    String departmentString = String.join("','", departmentList);



                    List<String> memberList = new ArrayList<>();
                    List<Row> memberIdList = memberIds.collectAsList();
                    for (Row row : memberIdList) {
                        memberList.add(row.getString(0));
                    }
                    String memberIdsString = String.join("','", memberList);


                    String query = "select teamId,teamName,PROJECTID,PROJECTNAME,DEPTID,DEPTNAME " +
                            "from Teamsref where teamId in ('" + memberIdsString + "') OR " +
                            "PROJECTID in ('" + projectIdString + "') OR  DEPTID in ('"+departmentString+"')";

                    System.out.printf("QUERY:::: %s", query);
                    Dataset<Row> teamsRef = sparkSession.read()
                            .format("jdbc")
                            .option("url", "jdbc:ignite:thin://localhost:10800")
                            .option("driver", "org.apache.ignite.jdbc.IgniteJdbcDriver")
                            .option("fetchSize", "100000")
                            .option("query", query)
                            .load();
                    teamsRef.show();

                    Dataset<Row> teamsLookupDs = teamsRef.
                            select(
                                    map_from_arrays(
                                            collect_list(col("teamId")),
                                            collect_list(col("teamName"))
                                    ).as("teams_lookup"),
                                    map_from_arrays(
                                            collect_list(col("projectId")),
                                            collect_list(col("projectName"))
                                    ).as("project_lookup"),
                                    map_from_arrays(
                                            collect_list(col("DEPTID")),
                                            collect_list(col("DEPTNAME"))
                                    ).as("departments_lookup")
                            );

                    teamsLookupDs.printSchema();
                    teamsLookupDs.show(false);







// 2. Attach this single map to every row in your main batch
// Because lookupDS only has ONE row, this cross join does NOT duplicate rows
                    Dataset<Row> joinedBatch = batch
                            .crossJoin(broadcast(teamsLookupDs));

// 3. Perform the lookup inside your existing transform logic
                    Dataset<Row> result = joinedBatch.withColumn("teams",
                                    transform(col("teams"), team -> {
                                        // Look up values directly from the attached map column
                                        Column foundName = coalesce(element_at(col("teams_lookup"), team.getField("teamId")), lit("team"));

                                        return team.withField("members",
                                                transform(team.getField("members"), member ->
                                                        member.withField("ENRICH", struct(foundName.as("TEAMNAME")))
                                                )
                                        );
                                    })
                            )

                            .withColumn("projects",
                                    transform(col("projects"), project -> {
                                        // Look up values directly from the attached map column
                                        Column foundName = coalesce(element_at(col("project_lookup"), project.getField("projectId")), lit("project"));

                                        return project.withField("tasks",
                                                transform(project.getField("tasks"), member ->
                                                        member.withField("ENRICH", struct(foundName.as("PROJECTNAME")))
                                                )
                                        );
                                    })
                            )

                            .withColumn("departments",
                                    transform(col("departments"), project -> {
                                        // Look up values directly from the attached map column
                                        Column foundName = coalesce(element_at(col("departments_lookup"), project.getField("deptId")), lit("department"));

                                        return project.withField("employees",
                                                transform(project.getField("employees"), member ->
                                                        member.withField("ENRICH", struct(foundName.as("DEPTNAME")))
                                                )
                                        );
                                    })
                            )


                            .drop("teams_lookup");


                    result.show(false);

                    result.explain("cost");


                    result.show(Integer.MAX_VALUE, false);

                    System.out.printf("count %d \n", batch.count());
                    System.out.println("batch id : " + batchId);

                })
                .start()
                .awaitTermination();
    }


}
