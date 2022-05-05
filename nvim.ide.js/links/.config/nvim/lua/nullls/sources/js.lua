local present, null_ls = pcall(require, 'null-ls')

if not present then
  return
end

return {
  null_ls.builtins.formatting.prettierd,
  null_ls.builtins.formatting.eslint_d,

  null_ls.builtins.diagnostics.eslint_d,
}
