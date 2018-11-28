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
apt-get install python3-pip
pip3 install mu-editor
pip3 install uflash

#libraries

#applications
apt-get install google-chrome-stable
apt-get install okular libreoffice
apt-get install gimp
apt-get install keepnote

#utilities
apt-get install gparted
apt-get install cups
apt-get install gufw
apt-get install xserver-xorg-input-synaptics

apt autoremove
apt-get clean

