
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[38;5;27;48;5;225m\]\w\[\e[0;38;5;225m\]\n$ \[\e[0m\]'

neofetch --ascii /home/aroze/.config/neofetch/cat

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
