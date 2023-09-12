FROM tomcat:jre8-alpine
COPY /home/runner/work/jenkins-cicd-k8s/jenkins-cicd-k8s/*.war /usr/local/tomcat/webapps/ROOT.war
