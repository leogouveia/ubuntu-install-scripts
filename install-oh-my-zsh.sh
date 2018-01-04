#!/bin/bash


echo "SCRIPTS DE AUTOMAÇÃO DE INSTALACAO DE APPS"
echo "------------------------------------------"
echo "          INSTALANÇÃO OH MY ZSH           "

apt update 

apt install zsh \
            git-core \
            vim \
            -y


wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

chsh -s `which zsh`