# Peter's dotfiles

## Installation

### Step 1: Install XCode CLI tools

```sh
xcode-select --install
```

### Step 2: Exexute dotfiles script

Install the whole development environment by single command.

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/peterhpchen/dotfiles/main/utils/installer/install.sh)"
```

### Step 3: Setup SSH

Execute `ssh.sh` to generate SSH key and setup.

```sh
. "$DOTFILES/utils/installer/ssh.sh" "your_email@example.com"
```

`your_email@example.com` is your GitHub email address.

> Please view the [Github Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

### Extra: Install dotfiles-extra

The `dotfiles-extra` is used to setup some specific environments. It has the same repo structure with `peterhpchen/dotfiles`, So we can just pull these submodule and execute `utils/installer/install.sh` to setup these env.

```sh
git submodule init
git pull --recurse-submodules
# gainmiles for example
. "$DOTFILES/gainmiles/utils/installer/install.sh"
```

If your extra dotfiles are in the private repository, you need change dotfiles' git remote path to ssh.

```sh
git remote set-url origin git@github.com:peterhpchen/dotfiles.git
```

## Reset

Reset everything by below command.

```sh
rm -rf ~/.dotfiles \
~/.zshenv ~/.editorconfig ~/.prettierrc.js \
~/.Brewfile ~/.Brewfile.lock.json \
~/.config/zsh ~/.config/nvm ~/.config/pyenv ~/.config/ripgrep ~/.config/fzf ~/.config/neofetch ~/.config/tmux ~/.config/kitty ~/.config/git ~/.config/sdkman ~/.config/tmuxinator ~/.config/gh ~/.config/gitui \
~/.local/share/zoxide \
~/.ssh/config ~/.ssh/config.d
```

You need `brew uninstall` after this command.
