#!/bin/bash


echo "SCRIPTS DE AUTOMAÇÃO DE INSTALACAO DE APPS"
echo "------------------------------------------"
echo "          INSTALANÇÃO SUBLIME             "

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -

apt install apt-transport-https -y

echo "deb https://download.sublimetext.com/ apt/dev/" | tee /etc/apt/sources.list.d/sublime-text.list

apt update

apt install sublime-text