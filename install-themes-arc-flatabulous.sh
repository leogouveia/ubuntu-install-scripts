#!/bin/bash

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