#!/bin/bash

# Update existing list of packages
sudo apt-get update -y

# Install prerequisites
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y

# Add Docker’s official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Set up the stable repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the package database with Docker packages
sudo apt-get update -y

# Install Docker Engine, CLI, and containerd
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Verify Docker installation
sudo docker --version

# Optional: Add current user to the Docker group to run Docker commands without sudo
sudo usermod -aG docker $USER
