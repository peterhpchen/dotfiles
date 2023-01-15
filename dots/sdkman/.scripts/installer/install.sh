#!/bin/sh

export SDKMAN_DIR="$XDG_CONFIG_HOME/sdkman"

curl -s "https://get.sdkman.io?rcupdate=false" | zsh
