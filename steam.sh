#!/bin/bash

# Update package list
sudo apt update

# Enable multiverse repository if not already enabled (Steam is in this repo)
sudo add-apt-repository multiverse
sudo apt update

# Install Steam
sudo apt install -y steam

# Verify installation
if command -v steam > /dev/null; then
    echo "Steam has been successfully installed."
else
    echo "Steam installation failed."
fi
