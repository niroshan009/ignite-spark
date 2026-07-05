FROM spark:3.5.7-java17
LABEL authors="kd"
VOLUME /tmp
ENV SPARK_HOME=/opt/spark
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
COPY ./jars/ $SPARK_HOME/jars/

#ENTRYPOINT ["java","-jar","/app/myapp.jar"]
ENV SPARK_CLASS="com.kd.Main"

#ENTRYPOINT spark-submit --class ${SPARK_CLASS} /app/ignite-spark-1.0.jar
#ENTRYPOINT ["/opt/spark/bin/spark-submit"]