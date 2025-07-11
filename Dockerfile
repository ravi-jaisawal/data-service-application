FROM openjdk:17-jdk-alpine

RUN apt-get update && \
    apt-get install -y git maven && \
    apt-get clean

RUN git clone https://github.com/ravi-jaisawal/data-service-application.git /app

WORKDIR /app

RUN mvn clean package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/your-app-name.jar"]
