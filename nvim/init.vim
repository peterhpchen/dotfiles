set ignorecase
set clipboard+=unnamedplus

tnoremap <ESC> <C-\><C-n>

" Install vim-plug if necessary
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'numToStr/Comment.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 0,
    \ }

nnoremap <C-n> :NvimTreeToggle<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>

lua << EOF
require('Comment').setup()
require('nvim-tree').setup()
require('nvim-treesitter.configs').setup({
  highlight = {
    enable = true
  },
  ensure_installed = {"vim", "lua"}
})
EOF
