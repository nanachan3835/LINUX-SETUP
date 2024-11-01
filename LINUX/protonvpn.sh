#!/bin/bash

# Update package list
# Install required dependencies
sudo apt install -y wget apt-transport-https

# Download the ProtonVPN repository GPG key
wget -O - https://protonvpn.com/download/protonvpn.gpg | sudo apt-key add -

# Add the ProtonVPN repository
echo "deb https://repo.protonvpn.com/debian stable main" | sudo tee /etc/apt/sources.list.d/protonvpn.list

# Update package list again after adding the repository
sudo apt update

# Install ProtonVPN
sudo apt install -y protonvpn

# Verify installation
if command -v protonvpn > /dev/null; then
    echo "ProtonVPN has been successfully installed."
else
    echo "ProtonVPN installation failed."
fi
