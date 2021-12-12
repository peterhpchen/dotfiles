#!/bin/bash

echo "Homebrew installer"

if [[ ! "$(command -v brew)" ]]; then
  echo "Installing Homebrew."
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
else
  echo "Homebrew installed."
fi

exit 0
