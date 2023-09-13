FROM tomcat:jre8-alpine
COPY */*.war /usr/local/tomcat/webapps/ROOT.war
