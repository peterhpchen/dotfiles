#!/bin/bash

echo "install treesitter javascript, typescript parser"
nvim --headless -c "TSInstallSync javascript typescript" -c "q"
