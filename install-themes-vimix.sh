#!/bin/bash

# echo 'Removing theme if it exists...'
# sudo rm -rf /usr/share/themes/{Arc-Flatabulous,Arc-Flatabulous-Darker,Arc-Flatabulous-Dark,Arc-Flatabulous-Solid,Arc-Flatabulous-Darker-Solid,Arc-Flatabulous-Dark-Solid}
# rm -rf ~/.local/share/themes/{Arc-Flatabulous,Arc-Flatabulous-Darker,Arc-Flatabulous-Dark,Arc-Flatabulous-Solid,Arc-Flatabulous-Darker-Solid,Arc-Flatabulous-Dark-Solid}
# rm -rf ~/.themes/{Arc-Flatabulous,Arc-Flatabulous-Darker,Arc-Flatabulous-Dark,Arc-Flatabulous-Solid,Arc-Flatabulous-Darker-Solid,Arc-Flatabulous-Dark-Solid}

rm -f ./vimix-gtk-themes

echo 'Installing dependencies...'
sudo apt install    gtk2-engines-murrine \
                    gtk2-engines-pixbuf \
                    libxml2-utils \
                    -y

echo 'Clonning repository...'
git clone https://github.com/vinceliuice/vimix-gtk-themes.git
cd vimix-gtk-themes

echo 'Compiling...'
./Vimix-installer

rm -rf ../vimix-gtk-themes