#!/bin/bash

# Update package list

# Install prerequisites
sudo apt install -y curl wget unzip

# Download the latest Oh My Posh release
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh-linux-amd64 -O /usr/local/bin/oh-my-posh

# Make the binary executable
sudo chmod +x /usr/local/bin/oh-my-posh

# Verify installation
if command -v oh-my-posh > /dev/null; then
    echo "Oh My Posh has been successfully installed."
else
    echo "Oh My Posh installation failed."
fi

# Optional: Setup a basic theme for your shell
# This example assumes you're using bash
echo 'eval "$(oh-my-posh init bash)"' >> ~/.bashrc

# Activate changes to .bashrc
source ~/.bashrc

echo "Please restart your terminal to see the changes."
