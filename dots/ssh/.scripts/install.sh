#!/bin/sh

SSH_DIR="$HOME/.ssh"

if [ -f "$SSH_DIR/config" ]; then
  echo "The ssh config file already exists ($SSH_DIR/config). Please remove it."
  exit 1
fi

mkdir "$SSH_DIR"
ln -s "$DOTS/ssh/config" "$SSH_DIR"
