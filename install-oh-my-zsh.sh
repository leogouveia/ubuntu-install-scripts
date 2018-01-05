#!/bin/bash


echo "SCRIPTS DE AUTOMAÇÃO DE INSTALACAO DE APPS"
echo "------------------------------------------"
echo "          INSTALANÇÃO OH MY ZSH           "

sudo apt update 

sudo apt install zsh \
            git-core \
            vim \
            -y


wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

chsh -s `which zsh`

sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

echo "Please, restart system to installation take effect"