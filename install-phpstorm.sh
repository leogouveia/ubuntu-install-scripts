#!/bin/bash


echo "SCRIPTS DE AUTOMAÇÃO DE INSTALACAO DE APPS"
echo "------------------------------------------"
echo "          INSTALANÇÃO PHPSTORM            "

# If Snap is not installed
if ! [ -x "$(command -v snap)" ]; then 
    sudo apt install snapd -y
fi

sudo snap install phpstorm --classic