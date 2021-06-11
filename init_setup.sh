#!/bin/bash

echo "" | sudo tee -a /etc/bash.bashrc

echo alias ll=\'ls -half\' | sudo tee -a /etc/bash.bashrc
echo alias inst=\'sudo apt update \; sudo apt install\' | sudo tee -a /etc/bash.bashrc
echo alias instt=\'sudo apt install\' | sudo tee -a /etc/bash.bashrc
echo alias mkt=\'cd \$\(mktemp -d\)\' | sudo tee -a /etc/bash.bashrc

sudo apt update

sudo apt install -y ubuntu-dbgsym-keyring
sudo apt install -y xclip

echo alias xc=\'xargs echo -n \| xclip -selection clipboard\' | sudo tee -a /etc/bash.bashrc
echo alias xcp=\'pwd \| xc\' | sudo tee -a /etc/bash.bashrc


sudo apt install -y vim
sudo apt install -y gparted

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text

sudo apt install -y adapta-gtk-theme
