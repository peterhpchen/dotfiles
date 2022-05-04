local present1, lsp_installer = pcall(require, 'nvim-lsp-installer')

if not present1 then
  return
end

lsp_installer.setup({
  ensure_installed = { 'tsserver', 'sumneko_lua' },
  automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
})

local present2, lspconfig = pcall(require, 'lspconfig')

if not present2 then
  return
end

local on_attach = require('lsp/helpers/on_attach')
local tsserver = require('lsp/servers/tsserver')
local sumneko_lua = require('lsp/servers/sumneko_lua')

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local enhance_server_opts = {
  ['tsserver'] = tsserver,
  ['sumneko_lua'] = sumneko_lua,
}

for lsp_name, lsp_opts in pairs(enhance_server_opts) do
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
