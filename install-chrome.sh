#!/bin/bash


echo "SCRIPTS DE AUTOMAÇÃO DE INSTALACAO DE APPS"
echo "------------------------------------------"
echo "       INSTALANÇÃO GOOGLE CHROME          "

apt install libxss1 libappindicator1 libindicator7 -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome*.deb