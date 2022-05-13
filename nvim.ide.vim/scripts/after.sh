#!/bin/bash

echo "install treesitter vim parser"
nvim --headless -c "TSInstallSync vim" -c "q"
