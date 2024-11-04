FROM openjdk:21-jdk
LABEL authors="Karen Melanie"

WORKDIR /app
COPY target/api-rest-0.0.1-SNAPSHOT.jar /app/api-rest-0.0.1-SNAPSHOT.jar
ENV DATABASE_URL=jdbc:postgresql://ep-cool-lake-a46rtt2d-pooler.us-east-1.aws.neon.tech:5432/verceldb
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/api-rest-0.0.1-SNAPSHOT.jar"]