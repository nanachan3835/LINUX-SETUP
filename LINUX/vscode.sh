#!/bin/bash

# Update package list and install dependencies
sudo apt update
sudo apt install -y wget gpg apt-transport-https

# Download and install the Microsoft GPG key
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
rm packages.microsoft.gpg

# Add Visual Studio Code repository to the system sources
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

# Update package list again
sudo apt update

# Install Visual Studio Code
sudo apt install -y code

# Clean up
sudo apt clean

# Verify installation
code --version
