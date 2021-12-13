#!/bin/bash

echo "Homebrew uninstaller"

if [[ "$(command -v brew)" ]]; then
  echo "Uninstalling Homebrew"
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh
else
  echo "Homebrew isn't installed."
fi

exit 0
