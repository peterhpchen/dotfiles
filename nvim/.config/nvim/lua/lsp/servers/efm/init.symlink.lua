local lsp_installer = require("nvim-lsp-installer")

local name = "efm"
local server_is_found, server = lsp_installer.get_server(name)
if server_is_found and not server:is_installed() then
  print("Installing " .. name)
  server:install()
end

return function(opts)
  opts.filetypes = { "lua", "sh", "typescriptreact" }
  opts.init_options = { documentFormatting = true }
  opts.settings = {
    languages = {
      lua = {
        {
          -- TODO check why stylua can detect .stylua.toml in ~/ but can't in ~/.dotfile/nvim/.config/
          -- formatCommand = "stylua -s -",
          formatCommand = "stylua --indent-type Spaces --indent-width 2 -",
          formatStdin = true,
        },
      },
      sh = {
        -- TODO check why shfmt can not detect .editorconfig
        -- { formatCommand = "shfmt", formatStdin = true },
        { formatCommand = "shfmt -i 2 -ci -bn", formatStdin = true },
      },
      typescriptreact = {
        {
          formatCommand = "prettier --stdin-filepath ${INPUT}",
          formatStdin = true,
        },
      },
    },
  }
end
