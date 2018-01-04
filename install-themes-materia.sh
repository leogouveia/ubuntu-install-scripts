#!/bin/bash

echo 'Removing theme if it exists...'
sudo rm -rf /usr/share/themes/{Materia,Flat-Plat}{,-compact,-dark,-dark-compact,-light,-light-compact}
rm -rf ~/.local/share/themes/{Materia,Flat-Plat}{,-compact,-dark,-dark-compact,-light,-light-compact}
rm -rf ~/.themes/{Materia,Flat-Plat}{,-compact,-dark,-dark-compact,-light,-light-compact}

echo 'Installing dependencies...'
sudo apt install autoconf \
            automake \
            pkg-config \
            libgtk-3-dev \
            git \
            gnome-themes-standard \
            gtk2-engines-murrine \
            libglib2.0-dev \
            libxml2-utils \
            -y

echo 'Clonning repository...'
mkdir ./temp && cd $_

wget -qO - https://github.com/nana-4/materia-theme/archive/master.tar.gz | tar xz

cd materia-theme-master

echo 'Compiling...'
sudo ./install.sh

cd ..
rm -rf ./temp