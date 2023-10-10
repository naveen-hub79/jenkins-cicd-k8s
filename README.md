 # Deploy to k8s Using Jenkins by Maven build

This is a sample maven project `jenkins-cicd-k8s` that demonstrates how to deploy a Java application to Kubernetes using Jenkins.

The steps involved are:

1. Create a sample maven project in Spring Tool Suite.
2. Add the project to a local git repository and push to a remote GitHub repository. 
3. Write the Dockerfile and Kubernetes deployment file and push to the repository.
4. Setup Jenkins with initial plugins and configurations.
5. Install Docker on the Jenkins server and add the Jenkins and user accounts to the Docker group.
6. Install the Kubernetes Continuous Deploy plugin version 1.0.0 in Jenkins.
7. Add Docker Hub, Git, and Kubernetes credentials in Jenkins.

In the `Dockerfile`, we need to remove the `ROOT` directory before putting the `ROOT.war` into the `webapps` directory, otherwise the `ROOT.war` will not be deployed correctly on Tomcat.

The Jenkins job will:

1. Pull the code from the GitHub repository. 
2. Build the Maven project.
3. Build the Docker image.
4. Push the Docker image to Docker Hub.
5. Apply the Kubernetes deployment file to deploy the application to Kubernetes.

This setup allows us to have a CI/CD pipeline where any changes pushed to the GitHub repository will:

1. Trigger the Jenkins job
2. Rebuild the Docker image
3. Deploy the new version to Kubernetes.

The full repository contains:

- The sample Maven project code in the `src` folder
- The `Dockerfile` 
- The Kubernetes `manifests` folder with the deployment file
- The `.github/workflows` folder with the GitHub Actions workflow to build and deploy
- The `helmcharts` folder for Helm charts (not used in this example)

Hope this summary helped clarify the purpose and contents of the repository! Let me know if you have any other questions.
