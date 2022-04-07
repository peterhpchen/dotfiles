local present, nightfox = pcall(require, 'nightfox')

if not present then
  return
end

nightfox.setup({
  fox = 'nordfox',
})
nightfox.load()
