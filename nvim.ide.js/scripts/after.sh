#!/bin/bash

echo "install treesitter javascript, typescript parser and lsp tsserver server"
mv ~/.config/nvim/lua/lsp/servers ~/.config/nvim/lua/lsp/servers-copy
mv ~/.config/nvim/lua/treesitter/parsers ~/.config/nvim/lua/treesitter/parsers-copy
nvim --headless -c "TSInstallSync javascript typescript" -c "LspInstall --sync tsserver" -c "q"
mv ~/.config/nvim/lua/lsp/servers-copy ~/.config/nvim/lua/lsp/servers
mv ~/.config/nvim/lua/treesitter/parsers-copy ~/.config/nvim/lua/treesitter/parsers
