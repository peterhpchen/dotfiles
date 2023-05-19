# Peter's dotfiles

My personal dotfiles for macOS, Zsh.

## Directory Structure

Every folder is a individual configuration for specific tool (or group). Its name is `dot`.

The `dot` structure is below:

```
.
|- .scripts
| |- install.sh
|- <config files>
|- README.md
```

You can execute `.scripts/install.sh` to install and config this tool. The installer can help you install tool and link all config files to specific position for setup.

## dot

The target of `dot` has two types: tool or group.

- When target is tool, it only charges single tool(for example: [nvm](./dots/nvm/)).
- When target is group, it charges multiple tools for a whole environment(for example: [nvim](https://github.com/peterhpchen/nvim)).

You can use your way to set any config by `dot`. For my way, I use four `dot` to setup my whole complete environment:

```
. (Root dot)
|- nvim (IDE)
|- gainmiles (Work)
|- personal (Personal)
```

- `.` (Root dot): Basic tools of OS and Command Line.
- `nvim` (IDE): Neovim settings.
- `gainmiles` (Work): The specific tools and settings for job.
- `personal` (Personal): The specific tools and settings for my personal use.

## Use git submodule to manage external plugins

This dotfiles use git submodule to manage the third party plugins of the tools.
The [dircolors](./dots/dircolors/) and [kitty](./dots/kitty/) is the example,
which using submodule handle theme plugins.

## Tools

The below is the tool list for root `dot`. if you want to know what tools include in the else `dot`, please see the each `dot` README.

- :beer: [Homebrew](./dots/homebrew/): :beer: The missing package manager for macOS (or Linux)
- :cat: [kitty](./dots/kitty/): Cross-platform, fast, feature-rich, GPU based terminal
- :framed_picture: [neofetch](./dots/neofetch/): :framed_picture: A command-line system information tool written in bash 3.2+
- :scroll: [exa](./dots/exa/): A modern replacement for ‘ls’.
- :mag: [fd](./dots/fd/): A simple, fast and user-friendly alternative to 'find'
- :mag_right: [ripgrep](./dots/ripgrep/): ripgrep recursively searches directories for a regex pattern while respecting your gitignore
- :cherry_blossom: [fzf](./dots/fzf/): :cherry_blossom: A command-line fuzzy finder
- :bat: [BAT](./dots/bat/): A cat(1) clone with wings.
- SHELL
  - dircolors
  - zsh
  - zsh-autosuggestions
  - zsh-completions
  - zsh-history-substring-search
  - zsh-syntax-highlighting
  - powerlevel10k
- Window Multiplexer
  - tmux
  - tmuxinator
- Version Control
  - git
  - gitignore.io
  - gitui
- CLI
  - zoxide
  - cheat.sh
- SSH
- Formatter
  - editorconfig
  - prettier
- Node.js
  - nvm
- Python
  - pyenv
- JAVA
  - sdkman

## Theme

This dotfiles use Nord theme for all tools.

## Installation

### Step 1: Install XCode CLI tools

```sh
xcode-select --install
```

### Step 2: Exexute dotfiles script

Install the whole development environment by single command.

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/peterhpchen/dotfiles/main/.scripts/install.sh)"
```

### Step 3: Setup SSH

Execute `ssh.sh` to generate SSH key and setup.

```sh
. "$DOTFILES/.scripts/ssh.sh" "your_email@example.com"
```

`your_email@example.com` is your GitHub email address.

> Please view the [Github Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

### Extra: Install dotfiles-extra

The `dotfiles-extra` is used to setup some specific environments. It has the same repo structure with `peterhpchen/dotfiles`, So we can just pull these submodule and execute `.scripts/install.sh` to setup these env.

```sh
git submodule init
git pull --recurse-submodules
# personal for example
. "$DOTFILES/personal/.scripts/install.sh"
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
