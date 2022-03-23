FROM openjdk:8u322-slim
EXPOSE 9090
MAINTAINER Ridlwan Yunus
COPY target/supersimple-spring-web-0.0.1-SNAPSHOT.jar app.jar
COPY src/main/resources/application.properties application.properties
ENTRYPOINT ["java","-Dspring.config.location=application.properties","-jar","app.jar"]