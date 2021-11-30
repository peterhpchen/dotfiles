"""""""""""""""""""
" vim-plug
"""""""""""""""""""

" Install vim-plug if necessary
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" An arctic, north-bluish clean and elegant Vim theme.
" https://github.com/arcticicestudio/nord-vim
Plug 'arcticicestudio/nord-vim'

" Add fzf(homebrew installed) to runtimepath
" https://github.com/junegunn/fzf/blob/master/README-VIM.md#installation
Plug '/usr/local/opt/fzf'

" Things you can do with fzf and Vim.
" https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf.vim'

" Vim plugin for shfmt
" https://github.com/z0mbix/vim-shfmt
Plug 'z0mbix/vim-shfmt', { 'for': 'sh' }

call plug#end()

" Auto format shell scripts on save
" https://github.com/z0mbix/vim-shfmt#auto-format-on-save
let g:shfmt_fmt_on_save = 1

" Enable loading the plugin files for specific file types
filetype plugin on

" Make Vim behave in a more useful way.
set nocompatible

" Keep most of your current color settings.
syntax on 

" Using true color
set termguicolors

" Fix termguicolors issue
" :h xterm-true-color
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

" Show the line number relative to the line with the cursor in front of each line.
set number relativenumber

" Copy indent from current line when starting a new line
set autoindent

" Enables command-line completion.
set wildmenu
set wildmode=full


nnoremap <C-p> :<C-u>Files<CR>

"""""""""""""""""""
" colorscheme
"""""""""""""""""""

" Setting nord theme
" https://github.com/arcticicestudio/nord-vim#quick-start
colorscheme nord
