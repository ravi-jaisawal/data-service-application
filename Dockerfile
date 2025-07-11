FROM openjdk:17-jdk-alpine

COPY "target/data-service-application.jar" app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]