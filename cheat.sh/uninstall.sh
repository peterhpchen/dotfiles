#!/bin/bash

echo "cheat.sh uninstaller"

if [[ "$(command -v brew)" ]]; then
  echo "Uninstalling cheat.sh"
  rm -f /usr/local/bin/cht.sh

  echo "Unsetting Zsh Tab Completion"
  rm -f ~/.zsh.d/_cht
else
  echo "cheat.sh isn't installed."
fi

exit 0
