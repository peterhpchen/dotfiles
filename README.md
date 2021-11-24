# Dotfiles

## Style Guide

[Google Shell Style Guide](https://google.github.io/styleguide/shellguide.html).

## Inspired By

* [nicknisi/dotfiles](https://github.com/nicknisi/dotfiles)

## Initial Setup and Installation

```bash
./install.sh
```

## QA

### Can not execute `./install.sh`

You need to have the execute right for `./install.sh`.

Use `chmod`:

```bash
chmod +w ./install.sh
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
