#!/bin/bash

# Colors
export grn="\e[1;32m"
export nc="\e[0m"

# Install my build of dwm
printf "$grn Install DWM... $nc\n"
git clone https://github.com/pwhitecat/dwm ~/.local/share/dwm
cd ~/.local/share/dwm
sudo make clean install
printf "$grn Done... $nc\n\n"

# Install my build of st
printf "$grn Install ST... $nc\n"
git clone https://github.com/pwhitecat/st ~/.local/share/st
cd ~/.local/share/st
sudo make clean install
printf "$grn Done... $nc\n\n"

# Install dmenu
printf "$grn Install DMenu... $nc\n"
git clone https://git.suckless.org/dmenu ~/.local/share/dmenu
cd ~/.local/share/dmenu
sudo make clean install
printf "$grn Done... $nc\n\n"

# Install slstatus
printf "$grn Install SLStatus... $nc\n"
git clone https://git.suckless.org/slstatus ~/.local/share/slstatus
cd ~/.local/share/slstatus
sudo make clean install
printf "$grn Done... $nc\n\n\n\n"


printf "#######################################\n"
printf "#                                     #\n"
printf "#  "
printf "$grn Done Installing Suckless Setup! $nc"
printf "  #\n"
printf "#                                     #\n"
printf "#######################################\n\n\n"
