package com.kd;

import org.apache.avro.Schema;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.spark.api.java.function.MapPartitionsFunction;
import org.apache.spark.sql.*;
import org.apache.spark.sql.avro.SchemaConverters;
import org.apache.spark.sql.catalyst.encoders.RowEncoder;
import org.apache.spark.sql.streaming.StreamingQuery;
import org.apache.spark.sql.streaming.StreamingQueryListener;
import org.apache.spark.sql.streaming.Trigger;
import org.apache.spark.sql.types.StructType;
import org.slf4j.LoggerFactory;
import scala.collection.JavaConverters;

import java.io.File;
import java.sql.*;
import java.util.*;
import java.util.concurrent.TimeoutException;
import java.util.stream.Collectors;


public class EnrichData {

    private static final org.slf4j.Logger log = LoggerFactory.getLogger(EnrichData.class);

    public static void main(String[] args) throws Exception {
        Logger.getLogger("org.apache").setLevel(Level.WARN);

        String s3Endpoint = System.getenv("S3_URL"); //"http://localhost:9000"
        String catalogEndpoint = System.getenv("CATALOG_URL"); //"http://localhost:8181"
        String maxBytesPerTrigger = System.getenv("MAX_BYTES_PER_TRIGGER");
        String triggerType = System.getenv("TRIGGER_TYPE");
        String igniteEndpoint = System.getenv("IGNITE_ENDPOINT"); // "jdbc:ignite:thin://127.0.0.1:10800/"
        String enrichedSchemaPath = System.getenv("ENRICHED_SCHEMA_PATH"); //"src/main/resources/avsc/enriched_teams.avsc";
        String s3AccessKey = System.getenv("S3_ACCESS_KEY");
        String s3SecretKey = System.getenv("S3_SECRET_KEY");


        log.info("Setting trigger to for {}", triggerType);
        log.info("----------------------");
        log.info("setting variables");
        log.info("S3_URL: {}", s3Endpoint);
        log.info("S3_ACCESS_KEY: {}", s3AccessKey);
        log.info("S3_SECRET_KEY: {}", s3SecretKey);
        log.info("CATALOG_URL: {}", catalogEndpoint);
        log.info("MAX_BYTES_PER_TRIGGER: {}", maxBytesPerTrigger);
        log.info("TRIGGER_TYPE: {}", triggerType);
        log.info("IGNITE_ENDPOINT: {}", igniteEndpoint);
        log.info("ENRICHED_SCHEMA_PATH: {}", enrichedSchemaPath);
        log.info("----------------------");


        String streamingCheckpointLocation = "s3a://checkpoint/enriched/";

        SparkSession sparkSession = SparkSession.builder()
                .config("spark.sql.catalog.demo", "org.apache.iceberg.spark.SparkCatalog")
                .appName("ignite-spark-enrich")
                .config("spark.sql.catalog.demo", "org.apache.iceberg.spark.SparkCatalog")
                .config("spark.sql.catalog.demo.type", "rest")
                .config("spark.sql.catalog.demo.uri", catalogEndpoint)
                .config("spark.sql.catalog.demo.io-impl", "org.apache.iceberg.aws.s3.S3FileIO")
                .config("spark.sql.catalog.demo.s3.endpoint", s3Endpoint)
                .config("spark.sql.catalog.demo.s3.path-style-access", "true")
                .config("spark.sql.catalog.demo.s3.access-key-id", s3AccessKey)
                .config("spark.sql.catalog.demo.s3.secret-access-key", s3SecretKey)
                .config("spark.sql.catalog.demo.warehouse", "s3://warehouse/")
                .config("spark.sql.catalog.demo.s3.region", "us-east-1")
                .config("spark.hadoop.fs.s3a.impl", "org.apache.hadoop.fs.s3a.S3AFileSystem")
                .config("spark.hadoop.fs.s3a.endpoint", s3Endpoint)
                .config("spark.hadoop.fs.s3a.access.key", s3AccessKey)
                .config("spark.hadoop.fs.s3a.secret.key", s3SecretKey)
                .config("spark.hadoop.fs.s3a.path.style.access", "true")
                .config("spark.hadoop.fs.s3a.endpoint.region", "us-east-1")
                .config("spark.hadoop.fs.s3a.aws.credentials.provider", "org.apache.hadoop.fs.s3a.SimpleAWSCredentialsProvider")
                .config("spark.hadoop.fs.s3a.connection.ssl.enabled", "false")
                .config("spark.hadoop.com.amazonaws.services.s3.enableV4", "true")
                .getOrCreate();


        sparkSession.streams().addListener(new StreamingQueryListener() {
            @Override
            public void onQueryStarted(StreamingQueryListener.QueryStartedEvent event) {
                log.info("Streaming query started: {}", event.id());
            }

            @Override
            public void onQueryProgress(StreamingQueryListener.QueryProgressEvent event) {
                log.info("Streaming query progress: {}", event.progress().toString());
            }

            @Override
            public void onQueryTerminated(StreamingQueryListener.QueryTerminatedEvent event) {
                log.info("Streaming query terminated: {}, exception={}", event.id(), event.exception());
            }
        });
        Dataset<Row> originalTeams = sparkSession.readStream()
                .format("iceberg")
                .option("maxFilesPerTrigger", "1")
                .option("maxBytesPerTrigger", maxBytesPerTrigger)
                .option("streaming-skip-overwrite-snapshots", "true")
                .option("streaming-skip-delete-snapshots", "true")
                .load("demo.db.teams");

        Schema enrichedTeamsSchema = new Schema.Parser().parse(new File(enrichedSchemaPath));
        StructType targetSqlSchema = (StructType) SchemaConverters.toSqlType(enrichedTeamsSchema).dataType();


        originalTeams.printSchema();

        Trigger trigger = triggerType.equalsIgnoreCase("ONCE") ? Trigger.AvailableNow() : Trigger.ProcessingTime("10 seconds");

        log.info("Spark Trigger Type set to : {}", trigger.toString());

        StreamingQuery streamingQuery = originalTeams.writeStream()
                .foreachBatch((Dataset<Row> teamsDf, Long batchId) -> {

                    int optimalPartitions = 3;

                    teamsDf = teamsDf.repartition(optimalPartitions).mapPartitions((MapPartitionsFunction<Row, Row>) it -> {

                        List<Row> originalRows = new ArrayList<>();

                        Set<String> teamIds = new HashSet<>();
                        Set<String> prjectIds = new HashSet<>();
                        Set<String> departmentIds = new HashSet<>();

                        Map<String, String> teamRef = new HashMap<>();
                        Map<String, String> projectRef = new HashMap<>();
                        Map<String, String> departmentRef = new HashMap<>();

                        while (it.hasNext()) {

                            Row rowOf = it.next();
                            originalRows.add(rowOf);

                            List<Row> teams = rowOf.getList(rowOf.fieldIndex("teams"));
                            List<Row> projects = rowOf.getList(rowOf.fieldIndex("projects"));
                            List<Row> departments = rowOf.getList(rowOf.fieldIndex("departments"));

                            teamIds.addAll(teams.stream().map(team -> (String) team.getAs("teamId")).collect(Collectors.toList()));
                            prjectIds.addAll(projects.stream().map(prject -> (String) prject.getAs("projectId")).collect(Collectors.toList()));
                            departmentIds.addAll(departments.stream().map(department -> (String) department.getAs("deptId")).collect(Collectors.toList()));
                        }

                        String memberIdsString = String.join("','", teamIds);
                        String departmentString = String.join("','", departmentIds);
                        String projectIdString = String.join("','", prjectIds);

                        String query = "select teamId,teamName,PROJECTID,PROJECTNAME,DEPTID,DEPTNAME " +
                                "from Teamsref_v3 where teamId in ('" + memberIdsString + "') OR " +
                                "PROJECTID in ('" + projectIdString + "') OR  DEPTID in ('" + departmentString + "')";


                        System.out.printf("QUERY:::: %s\n", query);

                        try (Connection conn = DriverManager.getConnection(igniteEndpoint)) {
                            PreparedStatement st = conn.prepareStatement(query);


                            try (ResultSet rs = st.executeQuery()) {
                                System.out.println();
                                while (rs.next()) {
                                    teamRef.put(rs.getString("teamId"), rs.getString("teamName"));
                                    departmentRef.put(rs.getString("DEPTID"), rs.getString("DEPTNAME"));
                                    projectRef.put(rs.getString("PROJECTID"), rs.getString("PROJECTNAME"));
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        } catch (SQLException ex) {
                            ex.printStackTrace();
                        }

                        List<Row> enriched = new ArrayList<>();
                        System.out.printf("department size %d \n", departmentRef.size());
                        System.out.printf("teams size %d \n", teamRef.size());
                        System.out.printf("project size %d \n", projectRef.size());

                        var orgId = "";
                        var orgName = "";

                        for (Row row : originalRows) {
                            List<Row> offices = row.getList(row.fieldIndex("offices"));
                            List<Row> enrichedTeamsRows = new ArrayList<>();
                            List<Row> enrichedProjectRows = new ArrayList<>();
                            List<Row> enrichedDepartmentRows = new ArrayList<>();

                            orgId = row.getString(row.fieldIndex("orgId"));
                            orgName = row.getString(row.fieldIndex("orgName"));


                            // START ENRICH TEAM ROWS
                            List<Row> teamsRows = row.getList(row.fieldIndex("teams"));


                            enrichedTeamsRows.addAll(teamsRows.stream().map(teamRow -> {
                                var teamId = teamRow.getString(teamRow.fieldIndex("teamId"));
                                var teamName = teamRow.getString(teamRow.fieldIndex("teamName"));

                                List<Row> teams = teamRow.getList(teamRow.fieldIndex("members"));

                                List<Row> enrichedTeams = teams.stream().map(teamStruct -> {
                                    var memberName = teamStruct.getString(teamStruct.fieldIndex("memberId"));
                                    var memberId = teamStruct.getString(teamStruct.fieldIndex("memberName"));
                                    var memberPosition = teamStruct.getString(teamStruct.fieldIndex("position"));
                                    var memberTeam = teamRef.getOrDefault(teamId, "NOT_FOUND");
                                    return RowFactory.create(memberId, memberName, memberPosition, memberTeam);
                                }).collect(Collectors.toList());
                                return RowFactory.create(teamId, teamName, JavaConverters.asScalaBufferConverter(enrichedTeams).asScala().toSeq());
                            }).collect(Collectors.toList()));
                            // END ENRICH TEAM ROWS


                            // START ENRICH PROJECT ROWS
                            List<Row> projectRows = row.getList(row.fieldIndex("projects"));

                            enrichedProjectRows.addAll(projectRows.stream().map(projectRow -> {
                                var projectId = projectRow.getString(projectRow.fieldIndex("projectId"));
                                var projectName = projectRow.getString(projectRow.fieldIndex("projectName"));
                                var status = projectRow.getString(projectRow.fieldIndex("status"));

                                List<Row> tasks = projectRow.getList(projectRow.fieldIndex("tasks"));

                                List<Row> enrichedTasks = tasks.stream().map(taskStruct -> {
                                    var taskId = taskStruct.getString(taskStruct.fieldIndex("taskId"));
                                    var taskName = taskStruct.getString(taskStruct.fieldIndex("taskName"));
                                    var assignee = taskStruct.getString(taskStruct.fieldIndex("assignee"));
                                    var dueDate = taskStruct.getString(taskStruct.fieldIndex("dueDate"));
                                    var project = projectRef.getOrDefault(projectId, "NOT_FOUND");
                                    return RowFactory.create(taskId, taskName, assignee, dueDate, project);
                                }).collect(Collectors.toList());
                                return RowFactory.create(projectId, projectName, status, JavaConverters.asScalaBufferConverter(enrichedTasks).asScala().toSeq());
                            }).collect(Collectors.toList()));
                            // END PROJECT ROWS


                            // START DEPARTMENT ROWS
                            List<Row> departmentsRows = row.getList(row.fieldIndex("departments"));

                            enrichedDepartmentRows.addAll(departmentsRows.stream().map(departmentRow -> {
                                var deptId = departmentRow.getString(departmentRow.fieldIndex("deptId"));
                                var deptName = departmentRow.getString(departmentRow.fieldIndex("deptName"));
                                var budget = departmentRow.getDouble(departmentRow.fieldIndex("budget"));

                                List<Row> employees = departmentRow.getList(departmentRow.fieldIndex("employees"));

                                List<Row> enrichedEmployees = employees.stream().map(empStruct -> {
                                    var empId = empStruct.getString(empStruct.fieldIndex("empId"));
                                    var empName = empStruct.getString(empStruct.fieldIndex("empName"));
                                    var role = empStruct.getString(empStruct.fieldIndex("role"));
                                    var salary = empStruct.getDouble(empStruct.fieldIndex("salary"));
                                    var dept = departmentRef.getOrDefault(deptId, "NOT_FOUND");
                                    return RowFactory.create(empId, empName, role, salary, dept);
                                }).collect(Collectors.toList());
                                return RowFactory.create(deptId, deptName, budget, JavaConverters.asScalaBufferConverter(enrichedEmployees).asScala().toSeq());
                            }).collect(Collectors.toList()));
                            // END DEPARTMENT ROWS

                            enriched.add(RowFactory.create(orgId, orgName,
                                    JavaConverters.asScalaBufferConverter(enrichedTeamsRows).asScala().toSeq(),
                                    JavaConverters.asScalaBufferConverter(enrichedProjectRows).asScala().toSeq(),
                                    JavaConverters.asScalaBufferConverter(enrichedDepartmentRows).asScala().toSeq(),
                                    JavaConverters.asScalaBufferConverter(offices).asScala().toSeq()));
                        }

                        return enriched.iterator();
                    }, Encoders.row(targetSqlSchema));

                    teamsDf.printSchema();

                    teamsDf
                            .writeTo("demo.db.enriched_teams")
                            .option("fanout-enabled", "true")
                            .append();
                })
                .option("checkpointLocation", streamingCheckpointLocation)
                .trigger(trigger)
                .start();

        Runtime.getRuntime().addShutdownHook(new Thread(() -> {
            log.info("Shutdown signal detected! Stopping stream gracefully...");
            if (streamingQuery.isActive()) {
                try {
                    streamingQuery.stop();
                } catch (TimeoutException e) {
                    throw new RuntimeException(e);
                }
            }
            sparkSession.stop();
        }));

        try {
            streamingQuery.awaitTermination();
            log.info("data saved to iceberg (query terminated normally)");
        } catch (Exception e) {
            log.error("Streaming query failed: ", e);
            throw new Exception(e.getMessage());
        }

    }
}
