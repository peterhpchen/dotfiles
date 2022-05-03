#!/bin/bash

echo "cheat.sh uninstaller"

if [[ "$(command -v cht.sh)" ]]; then
  echo "Uninstalling cheat.sh"
  sudo rm -f /usr/local/bin/cht.sh

  echo "Unsetting Zsh Tab Completion"
  rm -f ~/.zsh.d/_cht
else
  echo "cheat.sh isn't installed."
fi
