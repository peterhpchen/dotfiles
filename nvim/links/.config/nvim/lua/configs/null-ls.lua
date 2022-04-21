local present, null_ls = pcall(require, 'null-ls')

if not present then
  return
end

null_ls.setup({
  debug = false,
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.formatting.eslint_d,
    null_ls.builtins.formatting.isort,

    null_ls.builtins.diagnostics.eslint_d,
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
