#!/bin/bash
# This script installs the CodeDeploy agent and its prerequisites on Ubuntu 22.04.

# Update package index
sudo apt-get update 

# Install prerequisites
sudo apt-get install ruby-full ruby-webrick wget -y 

# Change to the /tmp directory
cd /tmp 

# Download the CodeDeploy agent package
wget https://aws-codedeploy-ap-southeast-1.s3.ap-southeast-1.amazonaws.com/releases/codedeploy-agent_1.3.2-1902_all.deb 

# Create a directory for extracting the CodeDeploy agent package
mkdir codedeploy-agent_1.3.2-1902_ubuntu22 

# Extract the contents of the .deb package
dpkg-deb -R codedeploy-agent_1.3.2-1902_all.deb codedeploy-agent_1.3.2-1902_ubuntu22 

# Update the control file to specify the Ruby dependency
sed 's/Depends:.*/Depends: ruby3.0/' -i ./codedeploy-agent_1.3.2-1902_ubuntu22/DEBIAN/control 

# Repackage the modified .deb file
dpkg-deb -b codedeploy-agent_1.3.2-1902_ubuntu22/ 

# Install the CodeDeploy agent
sudo dpkg -i codedeploy-agent_1.3.2-1902_ubuntu22.deb 

# Check the status of the CodeDeploy service
systemctl list-units --type=service | grep codedeploy 
sudo service codedeploy-agent status
