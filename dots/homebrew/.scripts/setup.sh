#!/bin/sh

ln -s "$DOTS/homebrew/.Brewfile" "$HOME"
brew bundle --global --quiet
