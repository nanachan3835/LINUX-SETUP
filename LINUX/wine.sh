#!/bin/bash

# Update package list

# Install dependencies
sudo apt install -y software-properties-common

# Add the WineHQ repository
sudo add-apt-repository -y ppa:wine/winehq

# Update package list again after adding the repository
sudo apt update

# Install Wine (stable version)
sudo apt install -y winehq-stable

# Verify installation
if command -v wine > /dev/null; then
    echo "Wine has been successfully installed."
else
    echo "Wine installation failed."
fi


sudo dpkg --add-architecture i386
sudo apt install software-properties-common
sudo add-apt-repository ppa:wine/wine-builds
sudo apt update

sudo apt install winetricks



wintricks dotnet45 dotnet48 dotnet6  dotnetcoredestop3 dotnetcoredesktop6 dotnetcore3

winetricks corefonts vcrun2013 
