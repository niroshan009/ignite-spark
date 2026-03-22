import org.apache.avro.Schema;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.spark.api.java.function.MapPartitionsFunction;
import org.apache.spark.api.java.package$;
import org.apache.spark.sql.*;
import org.apache.spark.sql.avro.SchemaConverters;
import org.apache.spark.sql.catalyst.encoders.RowEncoder;
import org.apache.spark.sql.catalyst.expressions.GenericRowWithSchema;
import org.apache.spark.sql.execution.ExplainMode;
import org.apache.spark.sql.streaming.OutputMode;
import org.apache.spark.sql.streaming.StreamingQuery;
import org.apache.spark.sql.streaming.StreamingQueryException;
import org.apache.spark.sql.types.ArrayType;
import org.apache.spark.sql.types.DataTypes;
import org.apache.spark.sql.types.StructType;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.JavaConverters;
import scala.collection.immutable.ArraySeq;
import scala.collection.immutable.Seq;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeoutException;
import java.util.stream.Collectors;

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

//        var query = "(SELECT CAST(id AS VARCHAR) AS id, * FROM Teamsref) as tmp";

//        Dataset<Row> df = sparkSession.read()
//                .format("jdbc")
//                .option("url", "jdbc:ignite:thin://localhost:10800")
//                .option("driver", "org.apache.ignite.jdbc.IgniteJdbcDriver")
//                .option("dbtable", "Teamsref")
//                .option("fetchSize", "100000")
//                .option("customSchema", "id STRING")
//                .load();
//
//        df.show();


        Dataset<Row> teamsDf = sparkSession.readStream()
                .format("iceberg")
                // .option("stream-from-timestamp", String.valueOf(streamStartTimestamp)) // Start from a specific time
                // Optional: ignore overwrite or delete snapshots to prevent job failure
                .option("streaming-skip-overwrite-snapshots", "true")
                .option("streaming-skip-delete-snapshots", "true")
                .load("db.teams");


        teamsDf.printSchema();
        String referenceData = "src/main/resources/csv/reference.csv";
        Dataset<Row> refData = sparkSession
                .read()
                .option("header", "true")
                .format("csv")
                .load(referenceData);


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

                    List<String> memberList = new ArrayList<>();
                    List<Row> memberIdList = memberIds.collectAsList();
                    for (Row row : memberIdList) {
                        memberList.add(row.getString(0));
                    }
                    String memberIdsString = String.join("','", memberList);


                    String query = "select teamId,teamName from Teamsref where teamId in ('" + memberIdsString + "')";

                    System.out.printf("QUERY:::: %s", query);
                    Dataset<Row> teamsRef = sparkSession.read()
                            .format("jdbc")
                            .option("url", "jdbc:ignite:thin://localhost:10800")
                            .option("driver", "org.apache.ignite.jdbc.IgniteJdbcDriver")
//                            .option("dbtable", "Teamsref")
                            .option("fetchSize", "100000")
                            .option("query", query)
                            .load();
                    teamsRef.show();

                    Dataset<Row> teamsLookupDs = teamsRef
                            .select(struct(col("teamId"), col("TEAMNAME")).as("entry"))
                            .agg(collect_list("entry").as("entries"))
                            .select(map_from_entries(col("entries")).as("teams_lookup"));

                    teamsLookupDs.printSchema();
                    teamsLookupDs.show(false);


                    // project id enrichment

                    Dataset<Row> projectIds = batch.withColumn("extracted_projectId",
                            transform(col("projects"), team ->

                                    team.getField("projectId")

                            )
                    ).select("extracted_projectId");


                    projectIds.printSchema();
                    projectIds.show(false);


                    projectIds = projectIds.select(explode(col("extracted_projectId")).as("extracted_projectId"));

                    List<String> projectList = new ArrayList<>();
                    List<Row> projectIdList = projectIds.collectAsList();
                    for (Row row : projectIdList) {
                        projectList.add(row.getString(0));
                    }
                    String projectIdString = String.join("','", projectList);


                    String projectIdQuery = "select PROJECTID,PROJECTNAME from Teamsref where PROJECTID in ('" + projectIdString + "')";

                    System.out.printf("QUERY:::: %s", projectIdQuery);
                    Dataset<Row> projectRefs = sparkSession.read()
                            .format("jdbc")
                            .option("url", "jdbc:ignite:thin://localhost:10800")
                            .option("driver", "org.apache.ignite.jdbc.IgniteJdbcDriver")
//                            .option("dbtable", "Teamsref")
                            .option("fetchSize", "100000")
                            .option("query", projectIdQuery)
                            .load();


                    Dataset<Row> projectLookupDs = projectRefs
                            .select(struct(col("PROJECTID"), col("PROJECTNAME")).as("entry"))
                            .agg(collect_list("entry").as("entries"))
                            .select(map_from_entries(col("entries")).as("projects_lookup"));

                    teamsLookupDs.printSchema();
                    teamsLookupDs.show(false);


                    // department enrichment
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


                    String departmentQuery = "select DEPTID,DEPTNAME from Teamsref where DEPTID in ('" + departmentString + "')";

                    System.out.printf("QUERY:::: %s", departmentQuery);
                    Dataset<Row> departmentRef = sparkSession.read()
                            .format("jdbc")
                            .option("url", "jdbc:ignite:thin://localhost:10800")
                            .option("driver", "org.apache.ignite.jdbc.IgniteJdbcDriver")
//                            .option("dbtable", "Teamsref")
                            .option("fetchSize", "100000")
                            .option("query", departmentQuery)
                            .load();


                    Dataset<Row> departmentLookupDs = departmentRef
                            .select(struct(col("DEPTID"), col("DEPTNAME")).as("entry"))
                            .agg(collect_list("entry").as("entries"))
                            .select(map_from_entries(col("entries")).as("departments_lookup"));

                    teamsLookupDs.printSchema();
                    teamsLookupDs.show(false);




// 2. Attach this single map to every row in your main batch
// Because lookupDS only has ONE row, this cross join does NOT duplicate rows
                    Dataset<Row> joinedBatch = batch
                            .crossJoin(broadcast(teamsLookupDs))
                            .crossJoin(broadcast(projectLookupDs))
                            .crossJoin(departmentLookupDs);


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
                                        Column foundName = coalesce(element_at(col("projects_lookup"), project.getField("projectId")), lit("project"));

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

        // enrich teams with team ids


        /*
        Dataset<Row> memberIds = teamsDf.withColumn("extracted_ids",
                transform(col("teams"), team ->
                        transform(team.getField("members"), member ->
                                member.getField("memberId")
                        )
                )
        ).select("extracted_ids");

        memberIds = memberIds.select(explode(col("extracted_ids")).as("extracted_ids"));
        memberIds = memberIds.select(explode(col("extracted_ids")).as("extracted_ids"));


        memberIds.printSchema();




//        Dataset<Row> teamsRef = sparkSession.read()
//                .format("jdbc")
//                .option("url", "jdbc:ignite:thin://localhost:10800")
//                .option("driver", "org.apache.ignite.jdbc.IgniteJdbcDriver")
//                .option("dbtable", "Teamsref")
//                .option("fetchSize", "100000")
////                .option("query", )
//                .load();
//        teamsRef.show();


        teamsDf = teamsDf.withColumn("teams", transform(
                col("teams"), (column) -> {



                    return column.withField("ENRICHED", struct(lit("temp").as("temp")));
                }

        ));

         */


        /*
        StreamingQuery query = teamsRef
                .writeStream()
                .format("console")
                .option("truncate", "false")
                .outputMode(OutputMode.Append())
                .start();




        query.awaitTermination();


         */


        /*
         batch.select("teams").toLocalIterator().forEachRemaining(e -> {
                        // Convert Scala Seq to a mutable Java List
                        java.util.List<Object> list = new java.util.ArrayList<>(
                                JavaConverters.seqAsJavaList(e.toSeq())
                        );

                        // Add your string easily

                        list.add("Your String Value");


                        // Convert back to Scala Seq if your downstream code requires it
                        scala.collection.immutable.Seq<Object> updatedSeq =
                                JavaConverters.asScalaBuffer(list).toSeq();

                        System.out.println(updatedSeq);
                    });

         */
    }


}
