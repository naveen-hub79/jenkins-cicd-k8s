### this folder is having helmcharts to deploy our app on kubernetes
## Creation of helmchart
```bash
helm create naveen-maven-app
```
- change the image name in naveen-maven-app/values.yaml
- change the port to 8080 in values.yaml
- comment out readynessprobe and liveness probe in deployment.yaml because we have not implemented them in application
- remove extra tags in image field of templates/deployment.yaml
- there are two ways to deploy our app using these charts
### Process 1
1. clone the repo locally
```bash 
git clone https://github.com/naveen-hub79/jenkins-cicd-k8s.git
```
2. then get into helmharts directory and execute below command
```bash
helm install my-maven-release naveen-maven-app
```
### Process 2
1. Install helm file on local
```bash
wget https://github.com/roboll/helmfile/releases/download/v0.144.0/helmfile_linux_amd64
mv helmfile_linux_amd64 helmfile
chmod 777 helmfile
mv helmfile /usr/local/bin
```
2. clone the repo locally
```bash 
git clone https://github.com/naveen-hub79/jenkins-cicd-k8s.git
```
3. execute helmfile sync command.
```bash
helmfile sync
```
- In the helmfile.yaml installed: true means installation false means uninstallation

