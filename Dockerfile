FROM tomcat:jre8-alpine
ARG JAR_FILE=target/*.war
COPY ${JAR_FILE} app.war
COPY ./app.war /usr/local/tomcat/webapps
