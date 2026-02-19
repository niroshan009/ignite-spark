import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SparkSession;

public class IgniteMain {

    public static void main(String[] args) {
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


        Dataset<Row> df = sparkSession.read()
                .format("jdbc")
                .option("url", "jdbc:ignite:thin://localhost:10800")
                .option("driver", "org.apache.ignite.jdbc.IgniteJdbcDriver")
                .option("dbtable", "Genre")
                .option("fetchSize", "100000")
                .load();
        df.show(false);
    }
}
