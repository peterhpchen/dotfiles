# Dotfiles

## Style Guide

- [Google Shell Style Guide](https://google.github.io/styleguide/shellguide.html).
- [Lua Style Guide](https://github.com/Olivine-Labs/lua-style-guide).

## Inspired By

- Repo structure and dotfile scripts: [nicknisi/dotfiles](https://github.com/nicknisi/dotfiles)
- Neovim lsp efm config: [damianveltkamp/dotfiles](https://github.com/damianveltkamp/dotfiles)

## Initial Setup and Installation

1. Edit `./git/.symlink.editconfig`.
2. [Setup ssh](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).
3. Execute `./_scripts/setup`.

## QA

### Can not execute scripts

You need to have the execute right.

Use `chmod`:

```bash
chmod +w ./_scripts/setup
```

### show `zsh compinit: insecure directories` when open terminal

If you execute `compaudit`, you can see the list of path which have write permission by either group or others.

```bash
% compaudit
There are insecure directories:
/usr/local/share/zsh/site-functions
/usr/local/share/zsh
```

Removing the right of write can fix this problem:

```bash
% chmod g-w /usr/local/share/zsh
% chmod g-w /usr/local/share/zsh/site-functions
```
