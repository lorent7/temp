export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"

export NODE_REPL_HISTORY="$XDG_STATE_HOME/node_history"

export CARGO_HOME="$XDG_DATA_HOME/cargo"

export WGETRC="$XDG_CONFIG_HOME/wgetrc"

export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export npm_config_cache="$XDG_CACHE_HOME/npm"

export VIMINIT='set viminfofile=$XDG_STATE_HOME/viminfo | source ~/.vimrc'

# self explanatory but if its bash, give it bash history file location
if [[ "$0" == *bash* ]]; then
    export HISTFILE="$XDG_STATE_HOME/bash_history"
fi
# same but zsh
if [[ "$0" == *zsh* ]]; then
    export HISTFILE="$XDG_STATE_HOME/zsh_history"
    SAVEHIST=5000 # max saved cmds in ram
    HISTSIZE=5000 # max saved cmds in history file
fi