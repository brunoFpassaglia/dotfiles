#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export SUDO_ASKPASS="/usr/bin/dpass.sh"
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
