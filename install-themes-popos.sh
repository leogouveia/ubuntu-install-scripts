#!/bin/bash


echo 'Installing dependencies...'

sudo add-apt-repository ppa:system76/pop -y
sudo apt update &&
sudo apt install pop-icon-theme \
                pop-fonts \
                -y

echo "Please, disable repository ppa to not update all distro to popOs"