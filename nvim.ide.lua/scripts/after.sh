#!/bin/bash

echo "install treesitter lua parser"
nvim --headless -c "TSInstallSync lua" -c "q"
