#!/bin/bash

echo "" | sudo tee -a /etc/bash.bashrc

echo alias ll=\'ls -half\' | sudo tee -a /etc/bash.bashrc
echo alias inst=\'sudo apt update \; sudo apt install\' | sudo tee -a /etc/bash.bashrc
echo alias instt=\'sudo apt install\' | sudo tee -a /etc/bash.bashrc
echo alias mkt=\'cd \$\(mktemp -d\)\' | sudo tee -a /etc/bash.bashrc

sudo apt update -y

sudo apt install -y ubuntu-dbgsym-keyring
sudo apt install -y xclip

echo alias xc=\'xargs echo -n \| xclip -selection clipboard\' | sudo tee -a /etc/bash.bashrc
echo alias xcp=\'pwd \| xc\' | sudo tee -a /etc/bash.bashrc


sudo apt install -y vim
sudo apt install -y gparted
sudo apt install -y meld
sudo apt install -y tree
sudo apt install -y pwgen

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update -y
sudo apt install -y sublime-text
sudo sed -i 's/xed.desktop/sublime_text.desktop;xed.desktop/g' /usr/share/applications/defaults.list

sudo apt install -y adapta-gtk-theme
sudo apt install -y ./adapta-backgrounds_0.5.3.1-0ubuntu1~cosmic1_all.deb

sudo add-apt-repository -y ppa:papirus/papirus
sudo apt update -y
sudo apt install -y papirus-icon-theme
