#
# /home/user/.config/bash/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# import env vars
source ~/.config/.shell/env.sh

# import aliases
source $XDG_CONFIG_HOME/.shell/aliases.sh

# to find available color numbers,
# ~/apps/shell/display colors script
PURPLE="\[$(tput setaf 135)\]"

# just resets to base color ig
RESET="\[$(tput sgr0)\]"

# original
# PS1='[\u@\h \W]\$ '
# translates to [user@host folder]$<space>

# with error code, <?> variable is last exit code
# PS1="${PURPLE}[\u@\h \W]${RESET} [\${?}] \$ "

# without error code
PS1="[${PURPLE}\u@\h \W${RESET}] \$ "

# for nvm?
source /usr/share/nvm/init-nvm.sh
