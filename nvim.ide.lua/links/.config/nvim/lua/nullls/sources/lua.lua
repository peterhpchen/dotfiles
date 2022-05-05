local present, null_ls = pcall(require, 'null-ls')

if not present then
  return
end

return {
  null_ls.builtins.formatting.stylua,
}
