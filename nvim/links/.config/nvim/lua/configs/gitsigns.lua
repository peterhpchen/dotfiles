local present, gitsigns = pcall(require, 'gitsigns')

if not present then
  return
end

gitsigns.setup({
  current_line_blame = true,
})
