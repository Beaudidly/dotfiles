# Path to your oh-my-zsh installation.
export ZSH=/home/beau/.oh-my-zsh

#golang stuff
export GOPATH=$HOME/go
path+=('$GOPATH/bin')

ZSH_THEME="gallois"
#ZSH_THEME="powerline"

ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
plugins=(git)

path+=('/home/beau/bin')
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

 export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

