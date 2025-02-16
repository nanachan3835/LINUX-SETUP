#!/bin/bash

# Update package list

# Install GIMP
sudo apt install -y gimp

# Verify installation
if command -v gimp > /dev/null; then
    echo "GIMP has been successfully installed."
else
    echo "GIMP installation failed."
fi
