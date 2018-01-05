#!/bin/bash


echo "SCRIPTS DE AUTOMAÇÃO DE INSTALACAO DE APPS"
echo "------------------------------------------"
echo "          INSTALANÇÃO ENPASS           "


sudo sh -c 'echo "deb http://repo.sinew.in/ stable main" > /etc/apt/sources.list.d/enpass.list'

wget -O - https://dl.sinew.in/keys/enpass-linux.key | sudo apt-key add -

sudo apt update
sudo apt install enpass -y
