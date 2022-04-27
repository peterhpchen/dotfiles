#!/bin/bash

echo "Set zsh as default"
chsh -s "$(command -v zsh)" "$(whoami)"
