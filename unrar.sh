#!/bin/bash

# Update package list
sudo apt update

# Install Unrar
sudo apt install -y unrar

# Verify installation
if command -v unrar > /dev/null; then
    echo "Unrar has been successfully installed."
else
    echo "Unrar installation failed."
fi
