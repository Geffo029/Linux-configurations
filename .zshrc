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



########################################
###### PLUGINS #########################




########################################
###### PROMPT ##########################

#TERMINAL=$(ps -p$PPID | awk '{print $4}' | sed -n '2 p')
#case $TERMINAL in
#	login)	SEPARATOR="" ;;
#	*)	SEPARATOR=$'\ue0b0';;
#esac
case $TERM in
	xterm-kitty)	SEPARATOR=$'\ue0b0';;
	*)		SEPARATOR='';;
esac
NEWLINE=$'\n'
#PROMPT="%K{black} %B%F{White}%m%f%b %k"
#PROMPT=$PROMPT"%K{blue}%F{black}$SEPARATOR%f %B%F{White}%~%f%b %k"
#PROMPT=$PROMPT"%F{blue}$SEPARATOR%f "



########################################
###### PROMPT ##########################

PROMPT_FILE=$HOME/.terminalstuff/prompt
[[ -f "$PROMPT_FILE" ]] && . "$PROMPT_FILE" 



########################################
###### ALIASES #########################

ALIASES_FILE=$HOME/.terminalstuff/aliases
[[ -f "$ALIASES_FILE" ]] && . "$ALIASES_FILE"



########################################
###### VARIABLES #######################

VARIABLES_FILE=$HOME/.terminalstuff/variables
[[ -f "$VARIABLES_FILE" ]] && . "$VARIABLES_FILE"



########################################
###### KEY BINDINGS ####################

BINDINGS_FILE=$HOME/.terminalstuff/bindings
[[ -f "$BINDINGS_FILE" ]] && . "$BINDINGS_FILE"
