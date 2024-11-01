#!/bin/bash

# Update package list and install dependencies
sudo apt install -y wget gpg

# Download the Insomnia .deb package
wget -O insomnia.deb https://github.com/Kong/insomnia/releases/latest/download/Insomnia.Core-*.deb

# Install the downloaded .deb package
sudo dpkg -i insomnia.deb

# Fix any missing dependencies
sudo apt --fix-broken install -y

# Clean up by removing the .deb file
rm insomnia.deb

# Verify installation
if command -v insomnia > /dev/null; then
    echo "Insomnia has been successfully installed."
else
    echo "Insomnia installation failed."
fi
