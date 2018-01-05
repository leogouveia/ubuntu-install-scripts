#!/bin/bash


echo "SCRIPTS DE AUTOMAÇÃO DE INSTALACAO DE APPS"
echo "------------------------------------------"
echo "       INSTALANÇÃO GOOGLE CHROME          "


# AS SAID IN UBUNTU 17.10 RELEASE NOTES:
# The Ubuntu GNOME flavor has been discontinued. 
# If you are using Ubuntu GNOME, you will be upgraded to Ubuntu. 
# Choose the Ubuntu session from the cog on the login screen 
# if you would like the default Ubuntu experience.

# Install gnome-session and choose GNOME 
# from the cog on the login screen if you would like to try a 
# more upstream version of GNOME.
# If you'd like to also install more core apps, 
# install the vanilla-gnome-desktop metapackage. 

sudo apt update

sudo apt install \
			vanilla-gnome-desktop \
			# gnome-tweak-tool \
			# gnome-session \
			# gnome-shell-extensions \
			# gnome-tweak-tool \
			# gnome-menus \
			-y

sudo apt install gnome-shell-extension-dashtodock 
