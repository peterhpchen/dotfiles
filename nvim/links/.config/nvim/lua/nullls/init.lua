local files = io.popen('ls ~/.config/nvim/lua/nullls/sources')

local sources = {}
for file in files:lines() do
  local present1, file = pcall(require, 'nullls.sources.' .. file:gsub('%.lua', ''))
  if present1 then
    for _, t in pairs(file) do
      table.insert(sources, t)
    end
  end
end

local present2, null_ls = pcall(require, 'null-ls')

if not present2 then
  return
end

null_ls.setup({
  debug = false,
  sources = sources,
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 10000)
            augroup END
            ]])
    end
  end,
})
