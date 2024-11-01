#!/bin/bash

# Update package list
sudo apt update

# Install required dependencies
sudo apt install -y wget

# Download the latest TeraBox .deb package
wget -O terabox.deb "https://terabox.com/en/download/linux"

# Install the downloaded .deb package
sudo dpkg -i terabox.deb

# Fix any missing dependencies
sudo apt --fix-broken install -y

# Clean up by removing the .deb file
rm terabox.deb

# Verify installation
if command -v terabox > /dev/null; then
    echo "TeraBox has been successfully installed."
else
    echo "TeraBox installation failed."
fi
