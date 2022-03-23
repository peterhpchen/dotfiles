local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- LSP
map('n', '<leader>li', '<cmd>LspInfo<cr>', opts)
map('n', '<leader>lI', '<cmd>LspInstallInfo<cr>', opts)

-- Telescope
map('n', '<C-p>', '<cmd>Telescope find_files<cr>', opts)
map('n', '<C-f>', '<cmd>Telescope live_grep<cr>', opts)

-- null-ls
map('n', '<leader>ni', '<cmd>NullLsInfo<cr>', opts)
