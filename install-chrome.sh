#!/bin/bash


echo "SCRIPTS DE AUTOMAÇÃO DE INSTALACAO DE APPS"
echo "------------------------------------------"
echo "       INSTALANÇÃO GOOGLE CHROME          "

source ./helpers.sh

sudo apt install libxss1 libappindicator1 libindicator7 -y

install_deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"

