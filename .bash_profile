#
# ~/.bash_profile
#

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias sl='ls --color=auto'
alias l='ls -lAh --color'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias gcc='gcc -fdiagnostics-color=always'
alias diff='colordiff'

#Quiet Startx
[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null
