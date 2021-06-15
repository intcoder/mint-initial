#!/bin/bash

UBUNTU_CODE_NAME=`cat /etc/upstream-release/lsb-release | grep DISTRIB_CODENAME= | sed s/DISTRIB_CODENAME=//g`
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$UBUNTU_CODE_NAME pgadmin4 main" | sudo tee /etc/apt/sources.list.d/pgadmin4.list
sudo apt update -y
sudo apt install pgadmin4 -y

sudo add-apt-repository -y ppa:serge-rider/dbeaver-ce
sudo apt update -y
sudo apt install -y dbeaver-ce

TMP_DIR=`mktemp -d`
wget https://www.syntevo.com/downloads/smartgit/smartgit-20_2_5.deb -P $TMP_DIR
sudo apt install -y $TMP_DIR/*.deb
