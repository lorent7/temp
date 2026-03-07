#
# /home/user/.config/bash/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"

export NODE_REPL_HISTORY="$XDG_STATE_HOME/node_history"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export HISTFILE="$XDG_STATE_HOME/bash_history"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export npm_config_cache="$XDG_CACHE_HOME/npm"

export VIMINIT='set viminfofile=$XDG_STATE_HOME/viminfo | source ~/.vimrc'

# import aliases
source $XDG_CONFIG_HOME/.shared/aliases.sh

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
