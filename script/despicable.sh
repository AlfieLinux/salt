#!/bin/bash
# Copyright 2018 Tuomas Olkinuora GPL v3

echo "Keyboard map Finnish and installing salt and git"

setxkbmap fi
sudo apt-get update
sudo apt-get -y install git salt-minion salt-master

echo "Minionizing"

echo "master: localhost" | sudo tee /etc/salt/minion

echo "Retrieving salt from GitHub"

cd /srv/
sudo git clone https://github.com/AlfieLinux/salt.git
sudo systemctl restart salt-minion
cd /salt/

echo "git settings"

git config --global credential.helper "cache --timeout=3600"
git config --global push.default simple
git config --global user.email "terosstudent@example.com"
git config --global user.name "Tuomas Olkinuora"

