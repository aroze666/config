#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export PS1="\[\033[38;5;196m\][\[$(tput sgr0)\]\[\033[38;5;226m\]\u\[$(tput sgr0)\]\[\033[38;5;208m\]@\[$(tput sgr0)\]\[\033[38;5;203m\]\h\[$(tput sgr0)\]\[\033[38;5;196m\]]\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;20m\]{\[$(tput sgr0)\]\[\033[38;5;50m\]\w\[$(tput sgr0)\]\[\033[38;5;20m\]}\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[\033[38;5;9m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
alias ls='ls --color'
alias lfa='lf -command "set hidden on"'
LS_COLORS='di=91:fi=93:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS
alias vi='vim'
clear && neofetch
