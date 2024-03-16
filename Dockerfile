FROM openjdk:17
ADD target/COMP367_Lab2_WebMVN.jar COMP367_Lab2_WebMVN.jar
ENTRYPOINT [ "java","-jar","/COMP367_Lab2_WebMVN.jar"]