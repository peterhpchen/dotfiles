local present, packer = pcall(require, 'packer')

if not present then
  return
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')

  use({
    'EdenEast/nightfox.nvim',
    config = require('configs.nightfox'),
  })

  use({
    'numToStr/Comment.nvim',
    config = require('configs.comment'),
  })

  -- be used by nvim-tree, bufferline, lualine
  use('kyazdani42/nvim-web-devicons')

  use({
    'kyazdani42/nvim-tree.lua',
    config = require('configs.nvim-tree'),
  })

  use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = require('configs.nvim-treesitter'),
  })

  -- be used by telescope, gitsigns
  use('nvim-lua/plenary.nvim')

  use({
    'nvim-telescope/telescope.nvim',
    config = require('configs.telescope'),
  })

  use('neovim/nvim-lspconfig')

  use({
    'williamboman/nvim-lsp-installer',
    config = require('lsp'),
  })
  use({
    'tami5/lspsaga.nvim',
    config = require('configs.lspsaga'),
  })

  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use({
    'hrsh7th/nvim-cmp',
    config = require('configs.cmp'),
  })

  -- For luasnip users.
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')

  use({
    'folke/trouble.nvim',
    config = require('configs.trouble'),
  })

  use({
    'nvim-lualine/lualine.nvim',
    config = require('configs.lualine'),
  })

  use({
    'akinsho/bufferline.nvim',
    config = require('configs.bufferline'),
  })

  -- use 'tpope/vim-unimpaired'
  -- use 'tpope/vim-surround'
  -- use 'tpope/vim-repeat'
  -- use 'tpope/vim-sleuth'

  use({
    'lewis6991/gitsigns.nvim',
    config = require('configs.gitsigns'),
  })

  use({
    'akinsho/toggleterm.nvim',
    config = require('configs.toggleterm'),
  })

  use({
    'lukas-reineke/indent-blankline.nvim',
    config = require('configs.indent-blankline'),
  })

  use({
    'windwp/nvim-autopairs',
    config = require('configs.nvim-autopairs'),
  })

  use({
    'phaazon/hop.nvim',
    branch = 'v1',
    config = require('configs.hop'),
  })
  use({
    'max397574/better-escape.nvim',
    config = require('configs.better-escape'),
  })
  use({
    'jose-elias-alvarez/null-ls.nvim',
    config = require('configs.null-ls'),
  })
end)
