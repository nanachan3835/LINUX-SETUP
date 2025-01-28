#!/bin/bash

# Cập nhật hệ thống
sudo pacman -Syu --noconfirm

# Cài đặt các ứng dụng từ official repositories
sudo pacman -S --noconfirm arduino discord docker ffmpeg gimp git go gparted kubectl texlive-most minikube nmap wireshark-qt nodejs scrcpy steam unrar virtualbox vlc code wine

# Cài đặt các ứng dụng từ AUR sử dụng yay
yay -S --noconfirm anaconda google-chrome insomnia lens-bin miniconda3 oh-my-posh-bin protonvpn pycharm-community-edition terabox


# Tải và cài đặt VirtualBox kernel modules
sudo modprobe vboxdrv

echo "Cài đặt hoàn tất!"