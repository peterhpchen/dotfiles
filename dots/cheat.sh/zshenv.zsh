#!/bin/zsh

export CHTSH_DIR="$XDG_CONFIG_HOME/cheat.sh"
export CHTSH_CONF="$CHTSH_DIR/cht.sh.conf"

export PATH="$CHTSH_DIR/bin:$PATH"

# ZSH Tab completion
export fpath=("$CHTSH_DIR/zsh-completions" $fpath)
