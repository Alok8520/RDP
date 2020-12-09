#! /bin/bash
sudo apt-get update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt-get update
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes xfce4 desktop-base
sudo apt-get update
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
sudo apt install --assume-yes xscreensaver
sudo adduser root chrome-remote-desktop
printf '\n https://remotedesktop.google.com/headless \n'
read -p "Paste Here: " CRP
su - root -c """$CRP"""
printf '\n https://remotedesktop.google.com/access/ \n'
