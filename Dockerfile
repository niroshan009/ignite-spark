FROM spark:3.5.7-java17
LABEL authors="kd"
ENV SPARK_HOME=/opt/spark
VOLUME /tmp
WORKDIR /tmp/downloads
RUN curl -LO https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.4/hadoop-aws-3.3.4.jar && \
    curl -LO https://repo1.maven.org/maven2/software/amazon/awssdk/apache-client/2.20.160/apache-client-2.20.160.jar && \
    curl -LO https://repo1.maven.org/maven2/org/apache/iceberg/iceberg-aws-bundle/1.5.0/iceberg-aws-bundle-1.5.0.jar && \
    curl -LO https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.262/aws-java-sdk-bundle-1.12.262.jar && \
    curl -LO https://repo.maven.apache.org/maven2/software/amazon/awssdk/s3-transfer-manager/2.20.160/s3-transfer-manager-2.20.160.jar && \
    curl -LO https://repo1.maven.org/maven2/org/apache/iceberg/iceberg-spark-runtime-3.5_2.12/1.5.0/iceberg-spark-runtime-3.5_2.12-1.5.0.jar

RUN cp /tmp/downloads/*.jar $SPARK_HOME/jars/

WORKDIR /app

ENV PATH=$SPARK_HOME/bin:$PATH
ENV S3_URL=http://localhost:9000
ENV CATALOG_URL=http://localhost:8181
ENV MAX_BYTES_PER_TRIGGER=485760
ENV TRIGGER_TYPE=ONCE
ENV IGNITE_ENDPOINT=jdbc:ignite:thin://127.0.0.1:10800/
ENV ENRICHED_SCHEMA_PATH=/app/resources/avsc/enriched_teams.avsc
ENV SOURCE_SCHEMA=/app/resources/avsc/team.avsc
ENV S3_ACCESS_KEY=rustfsadmin
ENV S3_SECRET_KEY=rustfsadmin
ENV FILE_NAME=teams.avro
ENV AWS_REGION=us-east-1


COPY ./target/ignite-spark-1.0.jar /opt/spark/work/ignite-spark-1.0.jar
COPY ./target/resources/avsc /app/resources/avsc


#ENTRYPOINT ["java","-jar","/app/myapp.jar"]
ENV SPARK_CLASS="com.kd.EnrichData"

#ENTRYPOINT spark-submit --class ${SPARK_CLASS} /app/ignite-spark-1.0.jar
#ENTRYPOINT ["/opt/spark/bin/spark-submit"]


