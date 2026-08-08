package com.kd;

import org.apache.avro.Schema;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SparkSession;
import org.apache.spark.sql.avro.SchemaConverters;
import org.apache.spark.sql.streaming.StreamingQuery;
import org.apache.spark.sql.streaming.StreamingQueryListener;
import org.apache.spark.sql.streaming.Trigger;
import org.apache.spark.sql.types.StructType;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.util.concurrent.TimeoutException;

public class ImportData {
    private static final org.slf4j.Logger log = LoggerFactory.getLogger(ImportData.class);


    public static void main(String[] args) throws Exception {
        Logger.getLogger("org.apache").setLevel(Level.WARN);


        String s3Endpoint = System.getenv("S3_URL");
        String s3AccessKey = System.getenv("S3_ACCESS_KEY");
        String s3SecretKey = System.getenv("S3_SECRET_KEY");
        String catalogEndpoint = System.getenv("CATALOG_URL");
        String sourceSchema = System.getenv("SOURCE_SCHEMA");
        String triggerType = System.getenv("TRIGGER_TYPE");
        String fileName = System.getenv("FILE_NAME");
        String appName = System.getenv("APP_NAME");

        log.info("----------------------");
        log.info("setting variables");
        log.info("S3_URL: {}{}", s3Endpoint);
        log.info("S3_ACCESS_KEY: {}{}", "\t".repeat(3), s3AccessKey);
        log.info("S3_SECRET_KEY: {}{}", "\t".repeat(3), s3SecretKey);
        log.info("CATALOG_URL: {}{}", "\t".repeat(3), catalogEndpoint);
        log.info("SOURCE_SCHEMA: {}{}", "\t".repeat(3), sourceSchema);
        log.info("TRIGGER_TYPE: {}{}", "\t".repeat(3), triggerType);
        log.info("FILE_NAME: {}{}", "\t".repeat(3), fileName);
        log.info("APP_NAME: {}{}","\t".repeat(3), appName);
        log.info("----------------------");

        SparkSession sparkSession = SparkSession.builder().appName(appName)
//                .master("local[*]")
                .config("spark.sql.catalog.demo", "org.apache.iceberg.spark.SparkCatalog")
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
                // Ensure Hadoop picks up the s3a filesystem implementation and credentials
                .config("spark.hadoop.fs.s3a.impl", "org.apache.hadoop.fs.s3a.S3AFileSystem")
                .config("spark.hadoop.fs.s3a.endpoint", s3Endpoint)
                .config("spark.hadoop.fs.s3a.access.key", s3AccessKey)
                .config("spark.hadoop.fs.s3a.secret.key", s3SecretKey)
                .config("spark.hadoop.fs.s3a.path.style.access", "true")
                .config("spark.hadoop.fs.s3a.endpoint.region", "us-east-1")
                // Simple credentials provider (use proper provider for production)
                .config("spark.hadoop.fs.s3a.aws.credentials.provider", "org.apache.hadoop.fs.s3a.SimpleAWSCredentialsProvider")
                // Disable SSL if using http endpoint (MinIO)
                .config("spark.hadoop.fs.s3a.connection.ssl.enabled", "false")
                // Helpful flag for AWS SDK v1 region handling
                .config("spark.hadoop.com.amazonaws.services.s3.enableV4", "true")
                .getOrCreate();
        Trigger trigger = triggerType.equalsIgnoreCase("ONCE") ? Trigger.AvailableNow() : Trigger.ProcessingTime("10 seconds");

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
        saveTeamsToDB(sparkSession, sourceSchema, trigger, fileName);
    }

    public static void saveTeamsToDB(SparkSession sparkSession, String sourceSchema, Trigger trigger, String fileName) throws Exception {
        String s3AvroPath = "s3a://inbound/";
        String streamingCheckpointLocation = "s3a://checkpoint/inbound/";


        Schema avroSchema = new Schema.Parser().parse(new File(sourceSchema));
        StructType sparkSchema = (StructType) SchemaConverters.toSqlType(avroSchema).dataType();

        log.info("Reading file from the S3 {}", fileName);

        Dataset<Row> avroStreamData = sparkSession.readStream()
                .format("avro")
                .option("pathGlobFilter", fileName)
                .schema(sparkSchema)
                .load(s3AvroPath);

        StreamingQuery query = avroStreamData.writeStream()
                .format("iceberg")
                .outputMode("append")
                .trigger(trigger)
                .option("checkpointLocation", streamingCheckpointLocation)
                .toTable("demo.db.teams");

        log.info("saving data, query id={}", query.id());
        log.info("query isActive={}, status={}", query.isActive(), query.status());
        Runtime.getRuntime().addShutdownHook(new Thread(() -> {
            log.info("Shutdown signal detected! Stopping stream gracefully...");
            if (query.isActive()) {
                try {
                    query.stop();
                } catch (TimeoutException e) {
                    throw new RuntimeException(e);
                }
            }
            sparkSession.stop();
        }));

        try {
            query.awaitTermination();
            log.info("data saved to iceberg (query terminated normally)");
        } catch (Exception e) {
            log.error("Streaming query failed: ", e);
            throw new Exception(e.getMessage());
        }
    }
}
