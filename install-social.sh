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
echo "******* INSTALL Telegram & Whatsapp Desktop (Unofficial) *******"


# Install whatsapp
# Add the repository to your sources list
curl -L https://packagecloud.io/Enrico204/Whatsapp-Desktop/gpgkey | sudo apt-key add -


sudo sh -c "echo 'deb https://packagecloud.io/Enrico204/Whatsapp-Desktop/debian/ stretch main' > /etc/apt/sources.list.d/Enrico204.list"

sudo apt install -y apt-transport-https curl gnupg
sudo apt update
sudo apt install -y whatsapp-desktop


# Install telegram
sudo add-apt-repository ppa:atareao/telegram -y

sudo apt update

sudo apt install telegram -y