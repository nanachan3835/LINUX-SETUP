#!/bin/bash

# Update package list
sudo apt update

# Install VLC
sudo apt install -y vlc

# Verify installation
if command -v vlc > /dev/null; then
    echo "VLC has been successfully installed."
else
    echo "VLC installation failed."
fi
