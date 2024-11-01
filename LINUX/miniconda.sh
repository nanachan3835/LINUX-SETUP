#!/bin/bash

# Update package list
sudo apt update

# Install dependencies
sudo apt install -y wget bzip2

# Download the latest Miniconda installer
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh

# Run the installer
bash miniconda.sh -b -p $HOME/miniconda3

# Clean up the installer
rm miniconda.sh

# Add Miniconda to PATH in .bashrc
echo 'export PATH="$HOME/miniconda3/bin:$PATH"' >> ~/.bashrc

# Activate changes to .bashrc
source ~/.bashrc

# Verify installation
if command -v conda > /dev/null; then
    echo "Miniconda has been successfully installed."
else
    echo "Miniconda installation failed."
fi
