local present, treesitter = pcall(require, 'nvim-treesitter.configs')

if not present then
  return
end

treesitter.setup({
  highlight = {
    enable = true,
  },
  ensure_installed = { 'vim', 'lua', 'c', 'cpp', 'javascript', 'typescript', 'html', 'css', 'scss', 'vue' },
})
