#! /bin/bash

#google repository key
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add

#apt repositories
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo add-apt-repository ppa:obsproject/obs-studio

apt update
apt upgrade

#tools
apt install curl
apt install software-properties-common
apt install snap

#development tools
apt install vim git gcc g++ doxygen
curl https://sh.rustup.rs -sSf | sh
snap install atom
apt install python3-pip
pip3 install mu-editor
pip3 install uflash

#libraries

#applications
apt install google-chrome-stable
apt install okular libreoffice
apt install gimp
apt install keepnote
apt install flowblade
apt install obs-studio

#utilities
apt install gparted
apt install cups
apt install gufw
apt install xserver-xorg-input-synaptics
pip3 install grip

apt autoremove
apt clean

