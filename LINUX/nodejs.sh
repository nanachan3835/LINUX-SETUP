#!/bin/bash

# Update package list

# Install prerequisites
sudo apt install -y curl

# Download and execute the NodeSource installation script for the desired Node.js version
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -

# Install Node.js
sudo apt install -y nodejs

# Verify installation
if command -v node > /dev/null && command -v npm > /dev/null; then
    echo "Node.js and npm have been successfully installed."
else
    echo "Node.js installation failed."
fi
