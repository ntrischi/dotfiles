# Neal Trischitta
# ~/.bashrc 
# v.4 Wed Aug 27 10:15:12 EDT 2014

#if not running interactively, don't do anything
[[ $- != *i* ]] && return

##ALIASES##
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
		alias ls='ls --color=auto'
		alias ll='ls -l --color=auto'
		alias sl='ls --color=auto'
		alias l='ls -lAh --color'
		alias l.='ls -d .* --color=auto'
		alias grep='grep --color=auto'
		alias egrep='egrep --color=auto'
		alias fgrep='fgrep --color=auto'
		alias gcc='gcc -fdiagnostics-color=always'
		alias diff='colordiff'
		alias lg='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

fi

alias mu='mupdf'
alias ssh-showkeys="tail +1 ~/.ssh/*.pub"


##GIT##
alias gs="git status"
alias gd="git diff"
alias gc="git commit"
alias gl="git log --graph --full-history --all --color"
alias cd..="cd .."

##FUNCTIONS##
#Create a tar archive
function maketar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }

##Enviroment Variables##
export TERM="screen"
#export TERM="rxvt-unicode-256color"
export arch="x86_64"
export repo="blackarch"
export SAL_USE_VCLPLUGIN="gtk lowriter"
export  SUDO_EDITOR="rvim"
export EDITOR="vim"

##PROMPT##
PS1='\[\033[01;32m\]\u@\h \[\033[00;31m\]\W \$ \[\033[00m\]'

#PS1='[\u@\h \W]\$ '
#PS1="\[\e[0;31m\][\[\e[1;31m\]\u\[\e[0;31m\]]\[\e[1;0m\][\[\e[1;37m\]\W\[\e[0m\]]\[\e[1;37m\]:\[\e[0m\] "

#Run archey
archey3
