# Deploying Dotfiles

## Starting from scratch
```sh
git init --bare $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
```

## Installing dotfiles
```sh
echo ".dotfiles" >> .gitignore

git clone --bare https://github.com/pwhitecat/Dotfiles $HOME/.dotfiles
git clone --bare git@github.com:pwhitecat/Dotfiles $HOME/.dotfiles

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

mkdir -p $HOME/.config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}

config checkout

config config --local status.showUntrackedFiles no
```
