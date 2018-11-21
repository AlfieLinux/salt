#!/bin/bash
# Copyright 2018 Tuomas Olkinuora GPL v3

echo "Keyboard map Finnish and installing salt and git"

setxkbmap fi
sudo apt-get update
sudo apt-get -y install git salt-minion 

echo "Minionizing"

echo "master: 192.168.10.50" | sudo tee /etc/salt/minion
sudo systemctl restart salt-minion

