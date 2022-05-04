local present, nvimtree = pcall(require, 'nvim-tree')

if not present then
  return
end

vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true })

nvimtree.setup({
  disable_netrw = true,
  open_on_setup = false,
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  renderer = {
    indent_markers = {
      enable = true,
    },
  },
})
