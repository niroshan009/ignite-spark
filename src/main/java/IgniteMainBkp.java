import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.spark.api.java.function.MapPartitionsFunction;
import org.apache.spark.sql.*;
import org.apache.spark.sql.avro.SchemaConverters;
import org.apache.spark.sql.catalyst.encoders.RowEncoder;
import org.apache.spark.sql.streaming.StreamingQueryException;
import org.apache.spark.sql.streaming.Trigger;
import org.apache.spark.sql.types.StructType;
import scala.collection.JavaConverters;
import org.apache.avro.Schema;


import java.io.File;
import java.io.IOException;
import java.sql.*;
import java.util.*;
import java.util.concurrent.TimeoutException;
import java.util.stream.Collectors;


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

                teamIds.addAll(teams.stream().map(team ->  (String)team.getAs("teamId")).collect(Collectors.toList()));
                prjectIds.addAll(projects.stream().map(prject -> (String)prject.getAs("projectId")).collect(Collectors.toList()));
                departmentIds.addAll(departments.stream().map(department -> (String)department.getAs("deptId")).collect(Collectors.toList()));
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
                        var memberTeam = teamRef.get(teamId);
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
                        var project = projectRef.get(projectId);
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
                        var dept = departmentRef.get(deptId);
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
