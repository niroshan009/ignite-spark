import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.spark.api.java.function.MapPartitionsFunction;
import org.apache.spark.sql.*;
import org.apache.spark.sql.avro.SchemaConverters;
import org.apache.spark.sql.catalyst.encoders.RowEncoder;
import org.apache.spark.sql.streaming.StreamingQueryException;
import org.apache.spark.sql.streaming.Trigger;
import org.apache.spark.sql.types.DataTypes;
import org.apache.spark.sql.types.StructType;
import scala.collection.JavaConverters;
import org.apache.avro.Schema;


import java.io.File;
import java.io.IOException;
import java.sql.*;
import java.util.*;
import java.util.concurrent.TimeoutException;
import java.util.stream.Collectors;

import static org.apache.spark.sql.functions.*;

public class IgniteMainBkp {

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

        String enrichedSchemaPath = "src/main/resources/avsc/enriched_teams.avsc";
        Schema enrichedTeamsSchema = new Schema.Parser().parse(new File(enrichedSchemaPath));


        teamsDf.printSchema();


        teamsDf = teamsDf.mapPartitions((MapPartitionsFunction<Row, Row>) it -> {

            List<Row> originalRows = new ArrayList<>();

            List<String> teamIds = new ArrayList<>();
            List<String> prjectIds = new ArrayList<>();
            List<String> departmentIds = new ArrayList<>();

            Map<String, String> teamRef = new HashMap<>();
            Map<String, String> projectRef = new HashMap<>();
            Map<String, String> departmentRef = new HashMap<>();

            while (it.hasNext()) {

                Row rowOf = it.next();
                originalRows.add(rowOf);

                List<Row> teams = rowOf.getList(rowOf.fieldIndex("teams"));
                List<Row> projects = rowOf.getList(rowOf.fieldIndex("projects"));
                List<Row> departments = rowOf.getList(rowOf.fieldIndex("departments"));


                for (Row team : teams) {
                    String teamId = team.getAs("teamId");
                    teamIds.add(teamId);
                }

                for (Row prject : projects) {
                    String projctId = prject.getAs("projectId");
                    prjectIds.add(projctId);
                }

                for (Row department : departments) {
                    String depatId = department.getAs("deptId");
                    departmentIds.add(depatId);
                }
            }

            String memberIdsString = String.join("','", teamIds);
            String departmentString = String.join("','", departmentIds);
            String projectIdString = String.join("','", prjectIds);

            String query = "select teamId,teamName,PROJECTID,PROJECTNAME,DEPTID,DEPTNAME " +
                    "from Teamsref where teamId in ('" + memberIdsString + "') OR " +
                    "PROJECTID in ('" + projectIdString + "') OR  DEPTID in ('" + departmentString + "')";


            System.out.printf("QUERY:::: %s", query);

            String url = "jdbc:ignite:thin://127.0.0.1:10800/";

            try (Connection conn = DriverManager.getConnection(url)) {
                PreparedStatement st = conn.prepareStatement(query);

                try (ResultSet rs = st.executeQuery()) {
                    while (rs.next()) {
                        teamRef.put(rs.getString("teamId"), rs.getString("teamName"));
                        departmentRef.put(rs.getString("DEPTID"), rs.getString("DEPTNAME"));
                        projectRef.put(rs.getString("PROJECTID"), rs.getString("PROJECTNAME"));
                    }
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }


            List<Row> enriched = new ArrayList<>();

            var orgId = "";
            var orgName = "";

            Struct newSchema;


            for (Row row : originalRows) {
                List<Row> offices = new ArrayList<>();
                List<Row> enrichedTeamsRows = new ArrayList<>();
                List<Row> enrichedProjectRows = new ArrayList<>();
                List<Row> enrichedDepartmentRows = new ArrayList<>();

                System.out.println(row.getString(row.fieldIndex("orgId")));
                System.out.println("-------");

                orgId = row.getString(row.fieldIndex("orgId"));
                orgName = row.getString(row.fieldIndex("orgName"));
                offices = row.getList(row.fieldIndex("offices"));


                // START ENRICH TEAM ROWS
                List<Row> teamsRows = row.getList(row.fieldIndex("teams"));


                for (Row teamRow : teamsRows) {

                    var teamId = teamRow.getString(teamRow.fieldIndex("teamId"));
                    var teamName = teamRow.getString(teamRow.fieldIndex("teamName"));

                    List<Row> teams = teamRow.getList(teamRow.fieldIndex("members"));
                    List<Row> enrichedTeams = new ArrayList<>();

                    for (int i = 0; i < teams.size(); i++) {
                        var teamStruct = teams.get(i);

                        var memberName = teamStruct.getString(teamStruct.fieldIndex("memberId"));
                        var memberId = teamStruct.getString(teamStruct.fieldIndex("memberName"));
                        var memberPosition = teamStruct.getString(teamStruct.fieldIndex("position"));
                        var memberTeam = teamRef.get(teamId);

                        enrichedTeams.add(RowFactory.create(memberId, memberName, memberPosition, memberTeam));
                    }

                    System.out.println("teams row");

                    enrichedTeamsRows.add(RowFactory.create(teamId, teamName, JavaConverters.asScalaBufferConverter(enrichedTeams).asScala().toSeq()));

                }

                // END ENRICH TEAM ROWS


                // START ENRICH PROJECT ROWS
                List<Row> projectRows = row.getList(row.fieldIndex("projects"));

                for (Row projectRow : projectRows) {

                    var projectId = projectRow.getString(projectRow.fieldIndex("projectId"));
                    var projectName = projectRow.getString(projectRow.fieldIndex("projectName"));
                    var status = projectRow.getString(projectRow.fieldIndex("status"));

                    List<Row> tasks = projectRow.getList(projectRow.fieldIndex("tasks"));
                    List<Row> enrichedTeams = new ArrayList<>();

                    for (int i = 0; i < tasks.size(); i++) {
                        var taskStruct = tasks.get(i);

                        var taskId = taskStruct.getString(taskStruct.fieldIndex("taskId"));
                        var taskName = taskStruct.getString(taskStruct.fieldIndex("taskName"));
                        var assignee = taskStruct.getString(taskStruct.fieldIndex("assignee"));
                        var dueDate = taskStruct.getString(taskStruct.fieldIndex("dueDate"));
                        var project = projectRef.get(projectId);

                        enrichedTeams.add(RowFactory.create(taskId, taskName, assignee, dueDate, project));
                    }

                    System.out.println("tasks row");

                    enrichedProjectRows.add(RowFactory.create(projectId, projectName, status, JavaConverters.asScalaBufferConverter(enrichedTeams).asScala().toSeq()));

                }


                // END PROJECT ROWS


                // START DEPARTMENT ROWS
                List<Row> departmentsRows = row.getList(row.fieldIndex("departments"));

                for (Row departmentRow : departmentsRows) {

                    var deptId = departmentRow.getString(departmentRow.fieldIndex("deptId"));
                    var deptName = departmentRow.getString(departmentRow.fieldIndex("deptName"));
                    var budget = departmentRow.getDouble(departmentRow.fieldIndex("budget"));

                    List<Row> employees = departmentRow.getList(departmentRow.fieldIndex("employees"));
                    List<Row> enrichedEmployees = new ArrayList<>();

                    for (int i = 0; i < employees.size(); i++) {
                        var taskStruct = employees.get(i);

                        var empId = taskStruct.getString(taskStruct.fieldIndex("empId"));
                        var empName = taskStruct.getString(taskStruct.fieldIndex("empName"));
                        var role = taskStruct.getString(taskStruct.fieldIndex("role"));
                        var salary = taskStruct.getDouble(taskStruct.fieldIndex("salary"));
                        var project = departmentRef.get(deptId);

                        enrichedEmployees.add(RowFactory.create(empId, empName, role, salary, project));
                    }

                    System.out.println("employees row");

                    enrichedDepartmentRows.add(RowFactory.create(deptId, deptName, budget, JavaConverters.asScalaBufferConverter(enrichedEmployees).asScala().toSeq()));  // Convert to Seq

                }
                // END DEPARTMENT ROWS

                System.out.println("teams enriched");

                enriched.add(RowFactory.create(orgId, orgName,
                        JavaConverters.asScalaBufferConverter(enrichedTeamsRows).asScala().toSeq(),
                        JavaConverters.asScalaBufferConverter(enrichedProjectRows).asScala().toSeq(),
                        JavaConverters.asScalaBufferConverter(enrichedDepartmentRows).asScala().toSeq(),
                        JavaConverters.asScalaBufferConverter(offices).asScala().toSeq()));


            }

            return enriched.iterator();
        }, RowEncoder.apply((StructType) SchemaConverters.toSqlType(enrichedTeamsSchema).dataType()));


        teamsDf.printSchema();


        teamsDf.explain("cost");


        teamsDf.writeStream()
                .format("console")
                .option("truncate", "false") // Crucial for seeing deeply nested JSON/Avro
                .option("numRows", 10)       // How many rows to print per batch
                .trigger(Trigger.ProcessingTime("10 seconds")) // How often to check for data
                .start()
                .awaitTermination();
    }


}
