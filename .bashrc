#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

SHELL=/usr/bin/bash



############################################################
###### PROMPT ##############################################

PROMPT_FILE="$HOME/Configurations/shellstuff/prompt"
[[ -f "$PROMPT_FILE" ]] && . "$PROMPT_FILE" 



############################################################
###### ALIASES #############################################

ALIASES_FILE="$HOME/Configurations/shellstuff/aliases"
[[ -f "$ALIASES_FILE" ]] && . "$ALIASES_FILE"



############################################################
###### VARIABLES ###########################################

VARIABLES_FILE="$HOME/Configurations/shellstuff/variables"
[[ -f "$VARIABLES_FILE" ]] && . "$VARIABLES_FILE"



############################################################
###### KEY BINDINGS ########################################

BINDINGS_FILE="$HOME/Configurations/shellstuff/bindings"
[[ -f "$BINDINGS_FILE" ]] && . "$BINDINGS_FILE"

