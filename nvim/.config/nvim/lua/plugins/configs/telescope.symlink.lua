vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>Telescope find_files<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>Telescope live_grep<cr>', { noremap = true })

local telescope = require('telescope')

telescope.setup({
  pickers = {
    find_files = {
      -- need sync with fd
      find_command = { 'fd', '--type=file', '--hidden', '--exclude=.git' }
    }
  }
})
