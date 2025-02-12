#! /usr/bin/bash
# -----------------------------------------------------------------------------
# Script Name: jenkinsUbuntu.sh
# Description: This script installs Java and Jenkins on a Debian-based system.
# Author: Naveen Bharathi S
# Date: 12-02-2025
# -----------------------------------------------------------------------------

set -x

# Java Installation

echo "Updating package lists and installing Java..."
sudo apt update
sudo apt install -y fontconfig openjdk-17-jre
java -version

# Jenkins Installation

echo "Downloading and adding Jenkins repository key..."
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key

echo "Adding Jenkins repository..."
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update
echo "Installing Jenkins..."
sudo apt-get install -y jenkins

# Enable and Start Jenkins Service

echo "Enabling and starting Jenkins service..."
sudo systemctl enable jenkins
sudo systemctl start jenkins

echo "Jenkins installation completed successfully."

set -x

#Java Installation

sudo apt update
sudo apt install fontconfig openjdk-17-jre
java -version

#Jenkins Installation

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins

sudo systemctl enable jenkins
sudo systemctl start jenkins
