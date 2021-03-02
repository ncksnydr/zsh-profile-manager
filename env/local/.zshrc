#!/usr/bin/env zsh
# ====================================================== #
#     SHELL PROFILE                                      #
# ====================================================== #

#   Set Paths
# ------------------------------------------------------------

export LOCAL=/Users/nick/Sites/Business/NKS_Enkayes/__Internal/zsh/env
export PATH=/usr/local/bin:/usr/local/sbin:./node_modules/.bin:~/.composer/vendor/bin:/usr/local/opt/php@7.4/bin:/usr/local/opt/php@7.4/sbin:$PATH
export ZSH=$HOME/.oh-my-zsh
export NODE_PATH=$NODE_PATH:`npm root -g`
export NVM_DIR=$HOME/.nvm

source $(brew --prefix nvm)/nvm.sh



#   Set default editor
# ------------------------------------------------------------
export EDITOR=/usr/bin/nano


#   Set timezone
# ------------------------------------------------------------
export TZ="America/Los_Angeles"


#   Set ZSH theme
# ------------------------------------------------------------
ZSH_THEME="spaceship"
source $LOCAL/globals/themes/opts-spaceship


#   Set plugins
# ------------------------------------------------------------
plugins=(git battery dotenv git-auto-fetch aws zsh-autosuggestions zsh-syntax-highlighting)


#   Includes
# ------------------------------------------------------------
source $ZSH/oh-my-zsh.sh

for GLOBAL_FILE in $LOCAL/globals/shell/*; do
  if [[ -f $GLOBAL_FILE ]]; then
    source "$GLOBAL_FILE";
  fi
done;

for LOCAL_FILE in $LOCAL/local/shell/*; do
  if [[ -f $LOCAL_FILE ]]; then
    source "$LOCAL_FILE";
  fi
done;

