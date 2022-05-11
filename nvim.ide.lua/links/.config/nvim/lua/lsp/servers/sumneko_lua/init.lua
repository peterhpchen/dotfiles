local lsp_installer = require('nvim-lsp-installer')
local on_attach = require('lsp/helpers/on_attach')

return function(opts)
  -- TODO use sumneko_lua formatter to replace stylua
  opts.on_attach = function(client, bufnr)
    client.resolved_capabilities.document_formatting = false
    on_attach(client, bufnr)
  end
end
