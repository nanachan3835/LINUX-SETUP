#!/bin/bash

# Update package list and install dependencies
sudo apt update
sudo apt install -y wget gdebi-core

# Download the latest Discord .deb package
wget -O discord.deb "https://discord.com/api/download?platform=linux&format=deb"

# Install Discord using the downloaded .deb package
sudo gdebi -n discord.deb

# Clean up by removing the .deb file
rm discord.deb

# Verify installation
if command -v discord > /dev/null; then
    echo "Discord has been successfully installed."
else
    echo "Discord installation failed."
fi
