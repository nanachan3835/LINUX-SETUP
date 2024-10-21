#!/bin/bash

# Update package list and install dependencies
sudo apt update
sudo apt install -y wget apt-transport-https

# Download and add the Oracle VirtualBox public key
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

# Add the VirtualBox repository to the system
echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

# Update package list again after adding the new repository
sudo apt update

# Install VirtualBox (latest version)
sudo apt install -y virtualbox-6.1

# Install additional dependencies (kernel headers and modules)
sudo apt install -y dkms

# Verify installation
if command -v virtualbox > /dev/null; then
    echo "VirtualBox has been successfully installed."
else
    echo "VirtualBox installation failed."
fi



