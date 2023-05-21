#!/bin/sh

CHTSH_DIR="$XDG_CONFIG_HOME/cheat.sh"

mkdir -p "$CHTSH_DIR/bin"
curl https://cht.sh/:cht.sh >"$CHTSH_DIR/bin/cht.sh"
chmod +x "$CHTSH_DIR/bin/cht.sh"
ln -s "$DOTS/cheat.sh/XDG_CONFIG_HOME/cht.sh.conf" "$CHTSH_DIR"

# ZSH Tab completion
mkdir -p "$CHTSH_DIR/zsh-completions"
curl https://cheat.sh/:zsh >"$CHTSH_DIR/zsh-completions/_cht"
