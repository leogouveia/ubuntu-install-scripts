#!/bin/bash

echo "SCRIPTS DE AUTOMAÇÃO DE INSTALACAO DE APPS"
echo "------------------------------------------"
echo "       INSTALANÇÃO VSCODE                 "

# if hash snap 2>/dev/null; then
#     sudo snap install vscode --classic
# else 
    # echo 'Snap is not installed in your system.'

    TEMP_DEB="$(mktemp)" &&
    	curl -o "$TEMP_DEB" -L https://go.microsoft.com/fwlink/?LinkID=760868 &&
    	sudo dpkg -i "$TEMP_DEB" &&
		rm -f "$TEMP_DEB"

	sudo apt install fonts-firacode
	
	#Install dependecies if needed
    sudo apt-get install -f -y
# fi
