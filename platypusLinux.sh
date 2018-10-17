#! /bin/bash

#google repository key
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add

#apt repositories
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
#sudo apt-add-repository ppa:elementary-os/stable

apt-get update
apt-get upgrade

#tools
apt-get install curl
apt-get install software-properties-common
apt-get install snap

#development tools
apt-get install vim git gcc g++ doxygen
curl https://sh.rustup.rs -sSf | sh
snap install atom

#libraries

#applications
apt-get install google-chrome-stable
apt-get install geary gnome-calendar gnome-contacts 
apt-get install okular libreoffice
apt-get gimp

#utilities
apt-get install gparted
apt-get install cups
apt-get install gnome-online-accounts

apt autoremove
apt-get clean

