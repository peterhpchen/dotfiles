# Peter's dotfiles

My personal dotfiles for macOS, Arch Linux, Zsh.

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
|- tsmc (Work)
|- personal (Personal)
```

- `.` (Root dot): Basic tools of OS and Command Line.
- `nvim` (IDE): Neovim settings.
- `tsmc` (Work): The specific tools and settings for job.
- `personal` (Personal): The specific tools and settings for my personal use.

## Use git submodule to manage external plugins

This dotfiles use git submodule to manage the third party plugins of the tools.
The [dircolors](./dots/dircolors/) and [kitty](./dots/kitty/) is the example,
which using submodule handle theme plugins.

## XDG Base Directory Specification

All packages in this dotfiles repo use [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) to organize configurations.

## Tools

The below is the tool list for root `dot`. if you want to know what tools include in the else `dot`([nvim](https://github.com/peterhpchen/nvim), personal and work), please see the each `dot` README.

- :lock: [SSH](./dots/ssh/)

- :cat: [kitty](./dots/kitty/): Cross-platform, fast, feature-rich, GPU based terminal

- :keyboard: [Neovim](https://github.com/peterhpchen/nvim)

- :whale: Docker
- :chart: Draw.io

- :rainbow: [dircolors](./dots/dircolors/)

- :feather: [zoxide](./dots/zoxide/): A smarter cd command. Supports all major shells.
- :books: [cheat.sh](./dots/cheat.sh/): the only cheat sheet you need

- :mouse: [editorconfig](./dots/editorconfig/): EditorConfig helps maintain consistent coding styles for multiple developers working on the same project across various editors and IDEs.
- :sparkles: [Prettier](./dots/prettier/): Prettier is an opinionated code formatter.

- :green_square::pilot: [nvm](./dots/nvm/): Node Version Manager - POSIX-compliant bash script to manage multiple active node.js versions
- :snake::pilot: [pyenv](./dots/pyenv/): Simple Python version management
  - :ghost: pyenv-virtualenv: a pyenv plugin to manage virtualenv (a.k.a. python-virtualenv)
- :coffee::pilot: [SDKMAN!](./dots/sdkman/): The SDKMAN! Command Line Interface

### :apple: macOS

- [macOS](./dots/macos/)
- :left_right_arrow: [Rectangle](./dots/rectangle/): Move and resize windows on macOS with keyboard shortcuts and snap areas
- :pilot: MAS
- :beer: [Homebrew](./dots/homebrew/): :beer: The missing package manager for macOS (or Linux)

### :shell: Zsh

- [Zsh](./dots/zsh/): Zsh is a shell with lots of features.
  - :page_facing_up: zsh-autosuggestions: Fish-like autosuggestions for zsh
  - :oncoming_automobile: zsh-completions: Additional completion definitions for Zsh.
  - :newspaper: zsh-history-substring-search: :tropical_fish: ZSH port of Fish history search (up arrow)
  - :rainbow: zsh-syntax-highlighting: Fish shell like syntax highlighting for Zsh.
  - :up: Powerlevel10k: A Zsh theme

### :window: tmux

- [tmux](./dots/tmux/): tmux is a terminal multiplexer
  - :pilot: TPM: Tmux Plugin Manager
  - :art: Nord: An arctic, north-bluish clean and elegant tmux color theme.
- :bookmark: [tmuxinator](./dots/tmuxinator/): Manage complex tmux sessions easily

### :christmas_tree: Git

- [Git](./dots/git/): Git is a fast, scalable, distributed revision control system
- :hole: [gitignore.io](./dots/gitignore.io/): Create useful .gitignore files for your project
- :tv: [GitUI](./dots/gitui/): Blazing :boom: fast terminal-ui for git written in rust :crab:
- :octocat: Github CLI

### :eyes: View

- :framed_picture: [fastfetch](./dots/fastfetch/): An actively maintained, feature-rich and performance oriented, neofetch like system information tool.
- :scroll: [eza](./dots/eza/): A modern, maintained replacement for ls
- :bat: [BAT](./dots/bat/): A cat(1) clone with wings.

### :flashlight: Search

- :mag: [fd](./dots/fd/): A simple, fast and user-friendly alternative to 'find'
- :mag_right: [ripgrep](./dots/ripgrep/): ripgrep recursively searches directories for a regex pattern while respecting your gitignore
- :cherry_blossom: [fzf](./dots/fzf/): :cherry_blossom: A command-line fuzzy finder

## Theme

- :art: Theme: [Nord](https://www.nordtheme.com/)
- :capital_abcd: Hack Nerd Font

## Installation

You can install in your host or just docker it.

```sh
docker run -it --rm archlinux/archlinux sh -uelic '
export TERM="screen-256color"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/peterhpchen/dotfiles/main/.scripts/install.archlinux.sh)"
zsh
'
```

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

### Step 4: Install dotfiles-extra (Optional)

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

## Sync changes

Because we use the `curl` to download the install script, the remote url of this repository is `https`. If we want to push our change to remote repository, we need to change remote `origin` from https to ssh.

```sh
git remote set-url origin git@github.com:peterhpchen/dotfiles.git
```

## Add a new submodule

If you want to add a new submodule (whether `external plugins` or `dotfiles-extra`), you can use `git submodule add` to do this.

```sh
# personal for example
git submodule add git@github.com:peterhpchen/dotfiles-personal.git personal
```

## Remove a existing submodule

If you want to remove a existing submodule (whether `external plugins` or `dotfiles-extra`), you need to uninstall first, then use `git rm` to remove the submodule. 

```sh
# personal for example
git rm personal
```

## Reset

Reset everything by below command.

```sh
rm -rf ~/.dotfiles \
~/.zshenv ~/.editorconfig ~/.prettierrc.js \
~/.Brewfile ~/.Brewfile.lock.json \
~/.config/zsh ~/.config/nvm ~/.config/pyenv ~/.config/ripgrep ~/.config/fzf ~/.config/fastfetch ~/.config/tmux ~/.config/kitty ~/.config/git ~/.config/sdkman ~/.config/tmuxinator ~/.config/gh ~/.config/gitui \
~/.local/share/zoxide \
~/.ssh/config ~/.ssh/config.d
```

You need `brew uninstall` after this command.
