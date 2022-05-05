local servers = io.popen('ls ~/.config/nvim/lua/lsp/servers')

local server_opts = {}
local ensure_installed = {}
for server in servers:lines() do
  local present1, server_opt = pcall(require, 'lsp.servers.' .. server)
  if present1 then
    server_opts[server] = server_opt
    table.insert(ensure_installed, server)
  end
end

local present2, lsp_installer = pcall(require, 'nvim-lsp-installer')

if not present2 then
  return
end

lsp_installer.setup({
  ensure_installed = ensure_installed,
  automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
})

local present3, lspconfig = pcall(require, 'lspconfig')

if not present3 then
  return
end

local on_attach = require('lsp/helpers/on_attach')
local tsserver = require('lsp/servers/tsserver')
local sumneko_lua = require('lsp/servers/sumneko_lua')

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

for lsp_name, lsp_opts in pairs(server_opts) do
  local opts = {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    },
    capabilities = capabilities,
  }

  lsp_opts(opts)

  lspconfig[lsp_name].setup(opts)
end
