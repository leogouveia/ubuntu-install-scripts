#!/bin/bash


echo "SCRIPTS DE AUTOMAÇÃO DE INSTALACAO DE APPS"
echo "------------------------------------------"
echo "          INSTALANÇÃO POMODORO GNOME             "


curl -L https://download.opensuse.org/repositories/home:/kamilprusko/xUbuntu_17.10/Release.key | sudo apt-key add -
sudo sh -c "echo 'deb https://download.opensuse.org/repositories/home:/kamilprusko/xUbuntu_17.10/ /' >> /etc/apt/sources.list.d/gnome-pomodoro.list"
sudo apt-get update
sudo apt-get install gnome-pomodoro
