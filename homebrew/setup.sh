#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Homebrew installer"

if [[ ! "$(command -v brew)" ]]; then
  echo "Installing Homebrew."
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
else
  echo "Homebrew installed."
fi

echo "Installing dependencies from the Brewfile"
brew bundle --file="$__dir/Brewfile"

exit 0
