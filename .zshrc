# Path to your oh-my-zsh installation.
export ZSH=/home/beau/.oh-my-zsh

# so java windows don't go white
export _JAVA_AWT_WM_NONREPARENTING=1

#golang stuff
export GOPATH=$HOME/go
path+=('$GOPATH/bin')

#rust stuff
path+=($HOME/.cargo/env)

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

# Colorize man pages
# github.com/cocoalabs
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}
