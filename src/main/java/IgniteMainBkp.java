import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.spark.api.java.function.MapPartitionsFunction;
import org.apache.spark.sql.*;
import org.apache.spark.sql.catalyst.encoders.RowEncoder;
import org.apache.spark.sql.streaming.StreamingQueryException;
import org.apache.spark.sql.streaming.Trigger;

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



            for(Row row : originalRows){

                System.out.println(row.getString(row.fieldIndex("orgId")));
                System.out.println("-------");




            }




            return it;
        }, teamsDf.encoder());




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
