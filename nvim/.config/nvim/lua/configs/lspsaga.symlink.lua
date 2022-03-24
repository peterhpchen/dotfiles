local lspsaga = require('lspsaga')

vim.api.nvim_set_keymap('n', 'gh', ':Lspsaga lsp_finder<CR>', { noremap = true })

lspsaga.init_lsp_saga()
