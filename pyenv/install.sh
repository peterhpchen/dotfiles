#!/bin/bash

echo "pyenv Installer"

if [[ ! "$(command -v pyenv)" ]]; then
  echo "Installing pyenv."
  curl https://pyenv.run | bash
else
  echo "pyenv insatlled."
fi
