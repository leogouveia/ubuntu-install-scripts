#!/bin/bash


echo "SCRIPTS DE AUTOMAÇÃO DE INSTALACAO DE APPS"
echo "------------------------------------------"
echo "       INSTALANÇÃO TILIX                  "

sudo apt update

sudo apt install tilix

sudo update-alternatives --config x-terminal-emulator
