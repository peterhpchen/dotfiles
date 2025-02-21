#!/bin/zsh

export SDKMAN_DIR="$XDG_CONFIG_HOME/sdkman"

SPRING_COMPLETION_DIR="$SDKMAN_DIR/candidates/springboot/current/shell-completion/zsh"

if [ -d "$SPRING_COMPLETION_DIR" ]; then
  export fpath=("$SPRING_COMPLETION_DIR" $fpath)
fi
