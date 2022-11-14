FROM tomcat:jre8-alpine
COPY target/*.war /usr/local/tomcat/ROOT
