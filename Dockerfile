FROM openjdk:21
COPY pom.xml .
COPY src src
RUN mvn clean package -DskipTests

FROM tomcat:9.0-jdk17-openjdk-slim

ADD target/Josue_COMP367_Lab3_Q1-0.0.1-SNAPSHOT.jar Josue_COMP367_Lab3_Q1-0.0.1-SNAPSHOT.jar
EXPOSE 9090
ENTRYPOINT [ "java","-jar","Josue_COMP367_Lab3_Q1-0.0.1-SNAPSHOT.jar" ]