#!/bin/bash

# Update package list and install snapd if not installed
sudo apt update
sudo apt install -y snapd

# Install Arduino IDE using Snap
sudo snap install arduino

# Verify installation
if snap list | grep -q arduino; then
    echo "Arduino IDE has been successfully installed via Snap."
else
    echo "Arduino IDE installation failed."
fi
