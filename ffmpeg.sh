#!/bin/bash

# Update package list
sudo apt update

# Install FFmpeg
sudo apt install -y ffmpeg

# Verify installation
if command -v ffmpeg > /dev/null; then
    echo "FFmpeg has been successfully installed."
else
    echo "FFmpeg installation failed."
fi
