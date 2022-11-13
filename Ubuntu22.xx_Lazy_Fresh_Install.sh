#!/bin/bash

#This script is intended to provide a way to automatically install and configure a Ubuntu instance on 
#the 'minimal install option'. Fully intended for people transitioning to Ubuntu from Windows.

echo "This script will auto configure and download/install apps that a FOB from Windows will need."

sudo apt update && sudo apt upgrade && sudo apt autoremove
sudo apt remove snapd && sudo apt purge snapd && sudo apt install snapd
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize' && gsettings set org.gnome.desktop.peripherals.touchpad "disable-while-typing" false
sudo apt install curl && curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get
sudo apt install pavucontrol
sudo apt install gnome-calendar
sudo apt install kdenlive
sudo apt install vlc
sudo apt install thunderbird
sudo apt install gimp
sudo apt install build-essential
sudo snap install ms-office-electron
sudo snap install dolphin-emulator
sudo snap install yuzu
sudo deb-get install zoom
sudo deb-get install portmaster
sudo deb-get install firefox-esr
sudo deb-get install dropbox
sudo deb-get install obs-studio
wget -P ~/Documents https://github.com/xournalpp/xournalpp/releases/download/v1.1.1/xournalpp-1.1.1-Ubuntu-focal-x86_64.deb
wget -P ~/Documents https://mega.nz/linux/repo/xUbuntu_22.04/amd64/megasync-xUbuntu_22.04_amd64.deb
wget -P ~/Documents https://download.anydesk.com/linux/anydesk_6.2.1-1_amd64.deb
wget -P ~/Documents https://cdn.akamai.steamstatic.com/client/installer/steam.deb
wget -P ~/Documents https://github.com/xournalpp/xournalpp/releases/download/v1.1.1/xournalpp-1.1.1-Ubuntu-focal-x86_64.deb
wget -P ~/Documents https://github.com/keepassxreboot/keepassxc/releases/download/2.7.4/KeePassXC-2.7.4-x86_64.AppImage
wget -P ~/Documents https://builds.parsecgaming.com/package/parsec-linux.deb
wget -P ~/Documents https://download.oracle.com/java/19/latest/jdk-19_linux-x64_bin.deb
wget -P ~/Documents https://customerconnect.vmware.com/akam/13/2b1ced92
chmod +x ~/Documents/*.bundle
chmod +x ~/Documents/*.deb
sleep 1
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
echo "sudo apt install ./Downloads/*.deb"
echo "sudo ./Downloads/*.bundle"
sudo apt update && sudo apt upgrade && sudo apt install brave-browser
echo --------- Machine will reboot in 10 seconds. ------------------------
wait 10
reboot
