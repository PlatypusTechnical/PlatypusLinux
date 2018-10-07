#! /bin/bash

#google repository key
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add

#apt repositories
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

apt-get update
apt-get upgrade

#development tools
apt-get install vim git gcc g++ doxygen

#libraries

#applications
apt-get install google-chrome-stable
apt-get install snapd
snap install hiri

apt-get autoclean
apt-get clean

