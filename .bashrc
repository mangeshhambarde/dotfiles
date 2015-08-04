# bash prompt
# color starts and ends are enclosed in an extra pair of []
# \u corner case for printf, so 4 escapes
# Not using extra [] causes the prev-remnant-command bug(?)
red='\[\e[1;31m\]'
blue='\[\e[0;34m\]'
green='\[\e[1;32m\]'
yellow='\[\e[1;33m\]'
end='\[\e[m\]'
if [ $EUID -ne 0 ]; then
	PS1=$(printf "%s\\\\u@\h:%s%s\w$%s " "$yellow" "$end" "$blue" "$end")
else
	PS1=$(printf "%s\\\\u@\h:%s%s\w#%s " "$red" "$end" "$blue" "$end")
fi

# exports
export TZ='Asia/Kolkata' # timezone
export TERM=xterm # http://www.economyofeffort.com/2014/07/04/zsh/
export PAGER='less' # pager

# bash options
HISTSIZE=1000000 # set history length
HISTCONTROL='ignoreboth' # don't put duplicate lines in the history
HISTFILESIZE=1000000 # set history file length
IGNOREEOF=1 # prevent one accidental eof

# shopts 
shopt -s histappend # append to the history file, don't overwrite it 
shopt -s checkwinsize # check the window size after each command

# sets
set -o vi # vi mode

# aliases
alias ll='ls -l'
alias lh='ls -lh'
alias rc='source ~/.bashrc'

# caps-to-ctrl
if [ $(type -P "xmodmap") ] && [ -f ~/.Xmodmap ]; then
	xmodmap ~/.Xmodmap
fi

# source work config
if [ -f ~/.bashrc.work ]; then
	source ~/.bashrc.work
fi
