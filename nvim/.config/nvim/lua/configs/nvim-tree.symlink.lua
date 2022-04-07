local present, nvimtree = pcall(require, 'nvim-tree')

if not present then
  return
end

vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_indent_markers = 1
vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true })

nvimtree.setup({
  disable_netrw = true,
  open_on_setup = true,
})
