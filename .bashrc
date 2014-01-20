#
# ~/.bashrc
#

#Run archey
archey

#if not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias sl='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='colordiff'
alias mu='mupdf'

#Git
alias gs="git status"
alias gd="git diff"
alias gc="git commit"
alias gl="git log --graph --full-history --all --color"

#Enviroment Variables
export TZ="America/New_York"
#export TERM="screen"
export TERM="rxvt-unicode-256color"
export arch="x86_64"
export repo="blackarch"

PS1='\[\033[01;32m\]\u@\h \[\033[00;31m\]\W \$ \[\033[00m\]'

#PS1='[\u@\h \W]\$ '
#PS1="\[\e[0;31m\][\[\e[1;31m\]\u\[\e[0;31m\]]\[\e[1;0m\][\[\e[1;37m\]\W\[\e[0m\]]\[\e[1;37m\]:\[\e[0m\] "
