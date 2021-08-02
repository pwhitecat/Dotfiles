#!/bin/bash

sudo apt-get update && sudo apt-get upgrade

# My packages
packages=""
packages+=" wget apt-transport-https"
packages+=" ranger vim"

# Suckless tools Dependencies
packages+=" build-essential libx11-dev libxinerama-dev sharutils"

sudo apt-get install $packages

# LSD
wget https://github.com/Peltoche/lsd/releases/download/0.20.1/lsd_0.20.1_amd64.deb
sudo dpkg -i lsd_0.20.1_amd64.deb
rm lsd_0.20.1_amd64.deb
