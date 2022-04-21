local present, betterEscape = pcall(require, 'better_escape')

if not present then
  return
end

betterEscape.setup()
