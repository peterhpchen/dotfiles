# Peter's dotfiles

## Installation

### Step 1: Install XCode

```sh
xcode-select --install
```

### Step 2: Setup SSH

Please view the [Github Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

### Step 3: Exexute dotfiles script

Install the whole development environment by single command.

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/peterhpchen/dotfiles/main/utils/installer/install.sh)"
```

### Extra: Install dotfiles-extra

The `dotfiles-extra` is used to setup some specific environments. It has the same repo structure with `peterhpchen/dotfiles`, So we can just pull these submodule and execute `utils/installer/install.sh` to setup these env.

```sh
git pull --recurse-submodules
# gainmiles for example
. "$DOTFILES/gainmiles/utils/installer/install.sh"
```

## Reset

Reset everything by below command.

```sh
rm -rf ~/.dotfiles ~/.sdkman \
~/.zshenv ~/.editorconfig ~/.prettierrc.js \
~/.Brewfile ~/.Brewfile.lock.json \
~/.config/zsh ~/.config/nvm ~/.config/pyenv ~/.config/ripgrep ~/.config/fzf ~/.config/neofetch ~/.config/tmux ~/.config/kitty ~/.config/git \
~/.local/share/zoxide
```

You need `brew uninstall` after this command.
