#!/bin/bash

# Update package list
sudo apt update

# Install wget if not already installed
sudo apt install -y wget

# Download the latest version of Go
wget https://golang.org/dl/go1.21.1.linux-amd64.tar.gz -O go.tar.gz

# Remove any previous installation of Go
sudo rm -rf /usr/local/go

# Extract the tarball to /usr/local
sudo tar -C /usr/local -xzf go.tar.gz

# Clean up by removing the downloaded tarball
rm go.tar.gz

# Add Go to PATH in .bashrc
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc

# Activate changes to .bashrc
source ~/.bashrc

# Verify installation
if command -v go > /dev/null; then
    echo "Go has been successfully installed."
else
    echo "Go installation failed."
fi
