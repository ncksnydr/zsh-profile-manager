#!/usr/bin/env zsh
# ====================================================== #
#     SHELL PROFILE                                      #
# ====================================================== #

#   Set Paths
# ------------------------------------------------------------
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export THEMES=$HOME/themes
export SHELL=$HOME/shell




#   Set default editor
# ------------------------------------------------------------
export EDITOR=/usr/bin/nano


#   Set timezone
# ------------------------------------------------------------
export TZ="America/Los_Angeles"


#   Set ZSH theme
# ------------------------------------------------------------
ZSH_THEME="spaceship"
source $THEMES/opts-spaceship;


#   Set plugins
# ------------------------------------------------------------
plugins=(git battery dotenv git-auto-fetch aws zsh-autosuggestions zsh-syntax-highlighting)


#   Includes
# ------------------------------------------------------------
source $ZSH/oh-my-zsh.sh

for FILE in $SHELL/*; do
  if [[ -f $FILE ]]; then
    source "$FILE";
  fi
done;