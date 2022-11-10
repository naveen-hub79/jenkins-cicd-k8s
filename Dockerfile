FROM openjdk:16-alpine3.13
ARG JAR_FILE=target/*.war
COPY ${JAR_FILE} app.war
ENTRYPOINT ["java","-jar","/app.war"]