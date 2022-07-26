# Peter's dotfiles

## Installation

Install the whole development environment by single command.

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/peterhpchen/dotfiles/main/utils/installer/install.sh)"
```

## Reset

Reset everything by below command.

```sh
rm -rf ~/.dotfiles \
~/.zshrc ~/.zshenv \
~/.Brewfile ~/.Brewfile.lock.json \
~/.config/nvm ~/.config/pyenv
```

You need `brew uninstall` after this command.
