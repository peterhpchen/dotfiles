#!/bin/bash

echo "install treesitter html, css, scss parser"
mv ~/.config/nvim/lua/lsp/servers ~/.config/nvim/lua/lsp/servers-copy
mv ~/.config/nvim/lua/treesitter/parsers ~/.config/nvim/lua/treesitter/parsers-copy
nvim --headless -c "TSInstallSync html css scss" -c "q"
mv ~/.config/nvim/lua/lsp/servers-copy ~/.config/nvim/lua/lsp/servers
mv ~/.config/nvim/lua/treesitter/parsers-copy ~/.config/nvim/lua/treesitter/parsers
