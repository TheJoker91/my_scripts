#!/bin/bash

# Description: Docker installation on Centos7
# Author: Idriss Bak
# Date: 4/14/2024

# Remove previous installed versions 
yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
if [ $? -eq 0 ]
then
echo "All previous versions of docker have been successfully deleted"
else
echo "Failed to delete previous versions of docker"
fi
sleep 3

# Set up the repository 
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

if [ $? -eq 0 ]
then
echo "The repository has been succesffuly set up"
else
echo "Failed to set up repository"
fi
sleep 3

# Install Docker Engine
yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

if [ $? -eq 0 ]
then
echo "Docker has been successfuly downloaded"
else
echo "Docker  failed to download"
fi
sleep 3

# Start Docker
systemctl start docker

if [ $? -eq 0 ]
then
echo "The docker daemon was successfully started"
else
echo "The docker demon failed to start"
fi
sleep 3

# Check your version of docker
echo "your version of docker is:"
docker --version
