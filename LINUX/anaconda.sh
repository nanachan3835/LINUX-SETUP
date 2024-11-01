sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

#!/bin/bash
sudo apt update
# Update package list

# Install dependencies
sudo apt install -y wget bzip2

# Download the latest Anaconda installer
wget https://repo.anaconda.com/archive/Anaconda3-2023.07-Linux-x86_64.sh -O anaconda.sh

# Run the installer
bash anaconda.sh -b -p $HOME/anaconda3

# Initialize Anaconda
eval "$($HOME/anaconda3/bin/conda shell.bash hook)"

# Clean up the installer
rm anaconda.sh

# Add Anaconda to PATH in .bashrc
echo 'export PATH="$HOME/anaconda3/bin:$PATH"' >> ~/.bashrc

# Activate changes to .bashrc
source ~/.bashrc

# Verify installation
if command -v conda > /dev/null; then
    echo "Anaconda has been successfully installed."
else
    echo "Anaconda installation failed."
fi
