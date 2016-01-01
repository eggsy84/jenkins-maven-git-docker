# jenkins-maven-git-docker
Docker image file for creating a Jenkins container ready for accompanying blog on http://eggsylife.co.uk/2015/12/29/spring-boot-jenkins-and-docker-part-one/

This docker image builds upon the vanilla Jenkins image (https://hub.docker.com/_/jenkins/) and ensures that Maven3 is installed within the container.

It also ensures that the following plugins (along with dependencies) are pre-installed:

* Git v2.4.1 (https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin)
* Build pipeline v1.4.9 (https://wiki.jenkins-ci.org/display/JENKINS/Build+Pipeline+Plugin)
* Cloudbees Docker Build and Publish v1.1 (https://wiki.jenkins-ci.org/display/JENKINS/CloudBees+Docker+Build+and+Publish+plugin) 
 

