#!/bin/sh

export PYENV_ROOT="$XDG_CONFIG_HOME/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
PYTHON_VERSION="3.10.5"

eval "$(pyenv init -)"
ln -s "$DOTS/pyenv/XDG_CONFIG_HOME/default-packages" "$XDG_CONFIG_HOME/pyenv"
pyenv install "$PYTHON_VERSION"
pyenv global "$PYTHON_VERSION"

git clone https://github.com/pyenv/pyenv-virtualenv.git "$PYENV_ROOT/plugins/pyenv-virtualenv"
