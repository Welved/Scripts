#!/bin/bash

#This script is intended to provide a way to automatically install and configure a Ubuntu instance on 
#the 'minimal install option'. Fully intended for people transitioning to Ubuntu from Windows.

echo "This script will auto configure and download/install apps that a FOB from Windows will need."

sudo apt update && sudo apt upgrade && sudo apt autoremove
sudo apt remove snapd && sudo apt purge snapd && sudo apt install snapd
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize' && gsettings set org.gnome.desktop.peripherals.touchpad "disable-while-typing" false
sudo apt install gnome-calendar kdenlive vlc thunderbird gimp keepassxc build-essential
sudo snap install dolphin-emulator yuzu
#wget -P ~/Documents https://mega.nz/linux/repo/xUbuntu_22.04/amd64/megasync-xUbuntu_22.04_amd64.deb

chmod +x ~/Documents/*.bundle
chmod +x ~/Documents/*.deb

sudo apt install ./Documents/*.deb
sudo ./Documents/*.bundle
reboot
