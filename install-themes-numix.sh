#!/bin/bash


echo 'Installing dependencies...'

sudo add-apt-repository ppa:numix/ppa -y
sudo apt update &&
sudo apt install numix*\
            -y

