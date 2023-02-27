# Official jenkins image

FROM jenkins/jenkins:lts
# Swith to root to be able to install Docker and modify permissions
USER root
RUN apt-get update

# Install docker
RUN curl -sSL https://get.docker.com/ | sh

# Add jenkins user to docker group
RUN usermod -a -G docker jenkins

# Switch back to default user
USER jenkins

# Build the image:
docker build -t yourusername/imagename .

# Run the image and mount with the followin bind mount option:

# docker run --name imagename -d -p8080:8080 -v /var/run/docker.sock:/var/run/docker.sock yourusername/imagename

docker run --name jenkins-docker-babs -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock babs1234/babs

#The recommended way for using Docker inside a Docker container, is to use the Docker deamon of the host system. Good article regarding that: https://itnext.io/docker-in-docker-521958d34efd.

#The secret to handle the permission issue, which this question is about, is to add permissions for the user of the container inside the container, not the host system. Only root user has permissions to do that by default, so

#docker exec -it -u root <container-name> bash

 docker exec -it -u root jenkins-docker-babs bash

 usermod -a -G docker <username>

# will do it. Remember to restart the container.