#!/bin/bash

echo "Packer Sync"
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
