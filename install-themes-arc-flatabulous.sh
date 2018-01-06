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
echo "******* INSTALL THEMES/ARC-FLATABULOUS *******"

echo 'Removing theme if it exists...'
sudo rm -rf /usr/share/themes/{Arc-Flatabulous,Arc-Flatabulous-Darker,Arc-Flatabulous-Dark,Arc-Flatabulous-Solid,Arc-Flatabulous-Darker-Solid,Arc-Flatabulous-Dark-Solid}
rm -rf ~/.local/share/themes/{Arc-Flatabulous,Arc-Flatabulous-Darker,Arc-Flatabulous-Dark,Arc-Flatabulous-Solid,Arc-Flatabulous-Darker-Solid,Arc-Flatabulous-Dark-Solid}
rm -rf ~/.themes/{Arc-Flatabulous,Arc-Flatabulous-Darker,Arc-Flatabulous-Dark,Arc-Flatabulous-Solid,Arc-Flatabulous-Darker-Solid,Arc-Flatabulous-Dark-Solid}

echo 'Installing dependencies...'
sudo apt install autoconf \
            automake \
            pkg-config \
            libgtk-3-dev \
            git \
            gnome-themes-standard \
            gtk2-engines-murrine \
            -y

echo 'Clonning repository...'
git clone https://github.com/andreisergiu98/arc-flatabulous-theme 
cd arc-flatabulous-theme

echo 'Compiling...'
./autogen.sh --prefix=/usr
sudo make install

cd ..
rm -rf arc-flatabulous-theme