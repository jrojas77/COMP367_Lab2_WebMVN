FROM openjdk:21
ADD target/Josue_COMP367_Lab3_Q1-0.0.1-SNAPSHOT.jar Josue_COMP367_Lab3_Q1-0.0.1-SNAPSHOT.jar
ENTRYPOINT [ "java","-jar","Josue_COMP367_Lab3_Q1-0.0.1-SNAPSHOT.jar" ]