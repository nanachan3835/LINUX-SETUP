#!/bin/bash

# Update package list
sudo apt update

# Install Git
sudo apt install -y git

# Install the GitHub CLI
sudo apt install -y software-properties-common
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt update
sudo apt install -y gh

# Verify installations
if command -v git > /dev/null; then
    echo "Git has been successfully installed."
else
    echo "Git installation failed."
fi

if command -v gh > /dev/null; then
    echo "GitHub CLI has been successfully installed."
else
    echo "GitHub CLI installation failed."
fi
