#!/bin/bash

# Update package list
sudo apt update

# Install dependencies
sudo apt install -y software-properties-common

# Add the WineHQ repository
sudo add-apt-repository -y ppa:wine/winehq

# Update package list again after adding the repository
sudo apt update

# Install Wine (stable version)
sudo apt install -y winehq-stable

# Verify installation
if command -v wine > /dev/null; then
    echo "Wine has been successfully installed."
else
    echo "Wine installation failed."
fi
