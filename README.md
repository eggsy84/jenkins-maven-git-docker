# jenkins-maven-git-docker

# Introduction

Docker image file for creating a Jenkins container ready for accompanying blog on http://eggsylife.co.uk/2015/12/29/spring-boot-jenkins-and-docker-part-one/

# Running the container

  docker run -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/bin/docker -p 8080:8080 -t jenkins

# Software Pre-Loaded

This docker image builds upon the vanilla Jenkins image (https://hub.docker.com/_/jenkins/)

As well as the vanilla jenkins images, Maven3 is pre-installed.

# Jenkins Plugins and Jenkins config

It also ensures that the following plugins (along with dependencies) are pre-installed:

* Git v2.4.1 (https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin)
* Build pipeline v1.4.9 (https://wiki.jenkins-ci.org/display/JENKINS/Build+Pipeline+Plugin)
* Cloudbees Docker Build and Publish v1.1 (https://wiki.jenkins-ci.org/display/JENKINS/CloudBees+Docker+Build+and+Publish+plugin)

Finally it pre-configures the Jenkins instance with knowledge of the Maven installation directory and Docker executable.
