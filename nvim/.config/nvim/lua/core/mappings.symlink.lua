local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- lsp
map('n', '<Leader>f', '<Cmd>lua vim.lsp.buf.formatting_sync()<CR>', opts)
map('n', '<Leader>li', '<Cmd>LspInfo<CR>', opts)
map('n', '<Leader>lI', '<Cmd>LspInstallInfo<CR>', opts)

-- lspsaga
map('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', opts)
map('n', '<Leader>ca', '<Cmd>Lspsaga code_action<CR>', opts)
map('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
map('n', 'gs', '<Cmd>Lspsaga signature_help<CR>', opts)
map('n', '<Leader>rn', '<Cmd>Lspsaga rename<CR>', opts)
map('n', 'gj', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
map('n', 'gk', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
map('n', 'gl', '<Cmd>Lspsaga show_line_diagnostics<CR>', opts)

-- telescope
map('n', '<C-p>', '<Cmd>Telescope find_files<CR>', opts)
map('n', '<C-f>', '<Cmd>Telescope live_grep<CR>', opts)

-- null-ls
map('n', '<Leader>ni', '<Cmd>NullLsInfo<CR>', opts)
