local present1, treesitter = pcall(require, 'nvim-treesitter.configs')

if not present1 then
  return
end

local ensure_installed = {}
local parsers = io.popen('ls ~/.config/nvim/lua/treesitter/parsers')
for file in parsers:lines() do
  local present2, parser = pcall(require, 'treesitter.parsers.' .. file:gsub('%.lua', ''))
  if present2 then
    for _, t in pairs(parser) do
      table.insert(ensure_installed, t)
    end
  end
end

treesitter.setup({
  highlight = {
    enable = true,
  },
  ensure_installed = ensure_installed,
})
