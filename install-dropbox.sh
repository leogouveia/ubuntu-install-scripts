#!/bin/bash


echo "SCRIPTS DE AUTOMAÇÃO DE INSTALACAO DE APPS"
echo "------------------------------------------"
echo "       INSTALANÇÃO GOOGLE CHROME          "



URL="https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb"
TEMP_DEB="$(mktemp)" &&
    	curl -o "$TEMP_DEB" -L "$URL" &&
    	sudo dpkg -i "$TEMP_DEB" &&
		rm -f "$TEMP_DEB"

#Install dependecies if needed
sudo apt-get install -f