#!/bin/bash

# Colors
export wht='\e[1;37m'
export pur='\e[1;35m'
export nc='\e[0m'

# basics
alias ..='cd ..;pwd'
alias ...='cd ../../;pwd'
alias ....='cd ../../../;pwd'
alias .....='cd ../../../;pwd'

alias c='clear'
alias p='pwd'
alias h='history'
alias tree='tree --dirsfirst -F'

alias l='lsd -l'
alias ll='lsd -la'
alias lt='lsd --tree'
alias ltd='lsd --tree -d'
alias llt='lsd -la --tree'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias tp='trash-put'

# Git
alias gs='git status'
alias ga='git add'
alias gaa='git add --all'
alias gcm='git commit -m'
alias gc='git clone'
alias gl='git log --oneline'
alias gps='git push'
alias gpl='git pull'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Calendar
alias Jan='cal Jan'
alias Feb='cal Feb'
alias Mar='cal Mar'
alias Apr='cal Apr'
alias May='cal May'
alias Jun='cal Jun'
alias Jul='cal Jul'
alias Aug='cal Aug'
alias Sep='cal Sep'
alias Oct='cal Oct'
alias Nov='cal Nov'
alias Dec='cal Dec'

# Apps
alias v='nvim'
alias r='ranger'
alias ts='trash-put'
alias tl='trash-list'

# Update fonts
alias upfont='fc-cache -f -v'

#get fastest mirrors in your neighborhood
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

