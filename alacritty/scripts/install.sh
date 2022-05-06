#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "alacritty installer"

if [[ "$(uname)" == "Darwin" ]]; then
  brew install alacritty
fi
