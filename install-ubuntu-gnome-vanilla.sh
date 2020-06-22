#!/bin/bash

#     My Ubuntu Personal Package Collection Curation.
#     It's a collection of scripts to install my favorite apps on Ubuntu enviroment.
#     It's made expecifically to Ubuntu 17.10 (Artful Aardvark)

#     Copyright (C) 2018 Leonardo de Albuquerque Gouveia

#     This program is free software; you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation; either version 2 of the License, or
#     (at your option) any later version.

#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.

#     You should have received a copy of the GNU General Public License along
#     with this program; if not, write to the Free Software Foundation, Inc.,
#     51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

echo "APPS INSTALLATION AUTOMATION SCRIPTS"
echo "------------------------------------"
echo ""
echo ""
echo "******* INSTALL GNOME-VANILLA *******"


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
			# gnome-menus \
			-y

# sudo apt install gnome-shell-extension-dashtodock 
