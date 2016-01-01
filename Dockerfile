# Pre-Built Docker Jenkins Images
# Maven 3 installed
# Bundled with Maven3 pre-installed
# Jenkins Git plugin installed
# Jenkins CloudBees Docker Build and Publish plugin installed
# Build Pipeline Plugin installed
# 
# As used on blog describing continuous delivery Jenkins, Docker and Spring Boot
# http://eggsylife.co.uk/2015/12/29/spring-boot-jenkins-and-docker-part-one/

FROM jenkins:1.625.3
MAINTAINER James Heggs eggsy@eggsylife.co.uk

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

USER root
RUN apt-get update && apt-get install -y maven3
USER jenkins
