# .config

## Description

Contains configs for `~/.config/`.  
Will get extended over time.  
I'm trying to make this smart but we'll see.

# Usage

Clone this repo wherever you have `$XDG_CONFIG_HOME` set i guess.

To use aliases:

```sh
# inside .config/<shell>/<.bashrc / .zshrc> 
source $XDG_CONFIG_HOME/.shared/aliases.sh
```

```sh
#
# ~/.bash_profile
#
declare file=~/.config/bash/.bashrc
[[ -f $file ]] && . $file
```

> [!important]
> If you dont have a basic bashrc in home it breaks in subshells

```sh
# ~/.bashrc
[[ -f ~/.config/bash/.bashrc ]] && . ~/.config/bash/.bashrc
```
