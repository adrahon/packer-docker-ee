#!/bin/sh
set -e

# Install docker-ee
sudo yum install -y docker-ee

# Ensure /etc/docker dir exists
sudo mkdir -p /etc/docker

# Copy engine config file
sudo cp /tmp/daemon.json /etc/docker/

# Enable engine service
sudo systemctl enable docker
