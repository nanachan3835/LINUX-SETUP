#!/bin/bash

# Update package list and install snap if not installed

# Install PyCharm Community Edition
sudo snap install -y pycharm-community --classic

# Install PyCharm Edu
sudo snap install -y pycharm-educational --classic

# Verify installations
if snap list | grep -q pycharm-community; then
    echo "PyCharm Community Edition has been successfully installed."
else
    echo "PyCharm Community Edition installation failed."
fi

if snap list | grep -q pycharm-educational; then
    echo "PyCharm Edu has been successfully installed."
else
    echo "PyCharm
