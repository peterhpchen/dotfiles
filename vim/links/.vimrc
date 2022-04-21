set ignorecase

set clipboard=unnamedplus

tnoremap <ESC> <C-\><C-n>

" Enable loading the plugin files for specific file types
filetype plugin on

" Make Vim behave in a more useful way.
set nocompatible

" Keep most of your current color settings.
syntax on 

" Using true color
set termguicolors

" Show the line number relative to the line with the cursor in front of each line.
set number relativenumber

" Copy indent from current line when starting a new line
set autoindent

" Enables command-line completion.
set wildmenu
set wildmode=full

if has('nvim')
else  
endif
