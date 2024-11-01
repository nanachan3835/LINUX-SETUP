#!/bin/bash

# Update package list
sudo apt update

# Install Wireshark and Nmap
sudo apt install -y wireshark nmap

# Add current user to the Wireshark group to capture packets without sudo (optional)
sudo usermod -aG wireshark $USER

# Notify user that they need to log out and back in for the group change to take effect
echo "If you want to capture packets without sudo, please log out and log back in."

# Verify installation
if command -v wireshark > /dev/null && command -v nmap > /dev/null; then
    echo "Wireshark and Nmap have been successfully installed."
else
    echo "Wireshark and/or Nmap installation failed."
fi
