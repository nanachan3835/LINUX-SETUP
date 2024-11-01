#!/bin/bash

# Update package list and install dependencie
sudo apt install -y wget apt-transport-https

# Download the latest Google Chrome .deb package
wget -O google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Install Google Chrome using the downloaded .deb package
sudo dpkg -i google-chrome.deb

# Fix any missing dependencies
sudo apt --fix-broken install -y

# Clean up by removing the .deb file
rm google-chrome.deb

# Verify installation
if command -v google-chrome > /dev/null; then
    echo "Google Chrome has been successfully installed."
else
    echo "Google Chrome installation failed."
fi
