#!/bin/sh

TPM_REMOTE=https://github.com/tmux-plugins/tpm.git

git clone "$TPM_REMOTE" "$XDG_CONFIG_HOME/tmux/plugins/tpm"
ln -s "$DOTS/tmux/XDG_CONFIG_HOME/tmux.conf" "$XDG_CONFIG_HOME/tmux"
"$XDG_CONFIG_HOME/tmux/plugins/tpm/bin/install_plugins"
