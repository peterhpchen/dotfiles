local lsp_installer = require("nvim-lsp-installer")
local on_attach = require("lsp/helpers/on_attach")

local name = "sumneko_lua"
local server_is_found, server = lsp_installer.get_server(name)
if server_is_found and not server:is_installed() then
  print("Installing " .. name)
  server:install()
end

return function(opts)
  -- TODO use sumneko_lua formatter to replace stylua
  opts.on_attach = function(client)
    on_attach(client)
  end
end
