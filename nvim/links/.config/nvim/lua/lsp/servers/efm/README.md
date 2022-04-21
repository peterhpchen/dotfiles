# efm

It has two formatters setting by efm: stylua and shfmt.

## stylua

### Install

`stylua` is installed by Cargo.

### Configuration

`stylua` uses `.stylua.toml` to config format. The default file is at `/stylua/.symlink.stylua.toml` which is symlinked to `~` by executing `_scripts/symlink`.

## shfmt

### Install

`shfmt` is installed by Homebrew.

### Configuration

`shfmt` uses `.editorconfig` to config format. The default .editorconfig is `/editorconfig/.symlink.editorconfig` which is symlinked to `~` by `_scripts/symlink`.
