# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/stefano/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall



############################################################
###### PLUGINS #############################################





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

