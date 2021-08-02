#!/usr/bin bash


###############################
#       History Settings      #
###############################


HISTTIMEFORMAT="[%F %T] "
HISTCONTROL=ignoredupsa
HISTSIZE=2000
HISTFILESIZE=2000


###############################
#  Source global definitions  #
###############################


if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# FZF
[ -f /usr/share/fzf/key-bindings.bash ] && source /usr/share/fzf/key-bindings.bash
[ -f /usr/share/fzf/completion.bash ] && source /usr/share/fzf/completion.bash


###############################
#  User specific environment  #
###############################


if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
export EDITOR='vim'
export VISUAL='vim'
export FZF_COMPLETION_TRIGGER='**'
export FZF_DEFAULT_COMMAND='fd --hidden --follow --exclude .git'
export FZF_ALT_C_COMMAND='fd --hidden --follow --exclude .git'
export RANGER_LOAD_DEFAULT_RC='FALSE'


###############################
#     User specific aliases   #
###############################

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases


###############################
#   User specific functions   #
###############################


# Archive Extraction
extract ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1=${wht}'[\W]'${pur}'$(git_branch)'${nc}' > '


###############################
#         Autostart/s         #
###############################

