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
echo "******* INSTALL DOCKER *******"

sudo apt remove docker docker-engine docker.io

sudo apt update

sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable edge"

sudo apt update

# Manage Docker as a non-root user

sudo groupadd docker

sudo usermod -aG docker $USER

# Configure docker to start on book

sudo systemctl enable docker

# sudo systemctl disable docker



