#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

SHELL=/usr/bin/bash

#if [ -f ~/.bash_aliases ]; then
#. ~/.bash_aliases
#fi

########################### PROMPT ########################### 
cyan_B='\[\e[1;36m\]'
yellow_B='\[\e[1;33m\]'
white_B='\[\e[1;37m\]'
green_B='\[\e[1;32m\]'
normal='\[\e[m\]'

# BASH PROMPTTTTTTTTTTTTTTTT
#PS0='Loading...' #Prima di mostrare l'output di ogni comando
#PS1='[\u@\h \W]\$ '
#PS1='\n\e[1;36m\][\e[33m\]\W\e[36m\]] \e[1;37m\]\$\e[00m\]: '
#PS1='\n\[\e[1;36m\][\[\e[33m\]\w\[\e[36m\]] \[\e[1;37m\]\$\[\e[m\]: '

#PS1="\n$cyan_B[$green_B\h$cyan_B][$yellow_B\w$cyan_B] $white_B\$$normal: "

PROMPT_FILE=$HOME/.terminalstuff/prompt
[[ -f $PROMPT_FILE ]] && . $PROMPT_FILE

########################### LINKS ########################### 
# set -P
# If set, do not follow symbolic links when performing commands.
# The physical directory is used instead. -o physical
