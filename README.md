# This is a sample maven project
# jenkins-cicd-k8s
testing cici jenkins for k8s
## Steps To Be Followed
1. create sample maven project in spring-suite-tool (Application).
2. add them to local git then push to remote github.
3. wite the docker file and deployment file and push them into repo.

### jenkins Configuration
1. setup Jenkins with intial plugins and configuration
2. install docker on jenkins server
3. add current user  and jenkins user to docker group
 ```
 sudo usermod -aG docker $USER 
 sudo usermod -aG docker jenkins 
 ```
4. install kubernetes continuos deploy plugin version 1.0.0 in advanced settings of plugin section,upload that plugin and deploy.
5. add dockerhub,git,kubeconfig in global credential configuration

### Note:
```
In the Dockerfile we need to remove ROOT directory before we put ROOT.war into webapps directory, otherwise our ROOT.war will not be deployed on tomcat
```



