local present, telescope = pcall(require, 'telescope')

if not present then
  return
end

telescope.setup({
  pickers = {
    find_files = {
      -- need sync with fd
      find_command = { 'fd', '--type=file', '--hidden', '--exclude=.git' },
    },
  },
})
