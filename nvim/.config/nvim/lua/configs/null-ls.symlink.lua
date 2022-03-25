local null_ls = require('null-ls')

null_ls.setup({
  debug = true,
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.eslint,
    null_ls.builtins.formatting.isort,

    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.diagnostics.shellcheck,
  },
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
