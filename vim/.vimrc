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

call plug#end()

" Make Vim behave in a more useful way.
set nocompatible

" Keep most of your current color settings.
syntax on 

" Using true color
set termguicolors
" set number relativenumber " 開啟行號

" set expandtab " 將 Tab 輸入都改為 Space
" set tabstop=2 " 按下 Tab 輸入兩個字元
" set softtabstop=2 " 如果 `expandtab` 設置, 按下 Tab 輸入兩個字元
" set shiftwidth=2 " 按下 `>>` 或 `<<` 或 `==` 時增減的字元數
" set autoindent " 新行跟上一行的縮排相同

" set path+=**
" set wildmenu

"""""""""""""""""""
" colorscheme
"""""""""""""""""""

" Setting nord theme
" https://github.com/arcticicestudio/nord-vim#quick-start
colorscheme nord
