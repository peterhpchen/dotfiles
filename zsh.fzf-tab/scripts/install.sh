#!/bin/bash

echo "fzf-tab installer"

FZF_TAB_HOME=~/.fzf-tab

# Clone zplug if necessary
if [[ ! -f $FZF_TAB_HOME/fzf-tab.plugin.zsh ]]; then
  echo "Installing fzf-tab."
  git clone https://github.com/Aloxaf/fzf-tab $FZF_TAB_HOME
else
  echo "fzf-tab was installed."
fi

exit 0
