local telescope = require('telescope')

telescope.setup({
  pickers = {
    find_files = {
      -- need sync with fd
      find_command = { 'fd', '--type=file', '--hidden', '--exclude=.git' },
    },
  },
})
