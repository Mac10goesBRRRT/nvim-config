local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
  print("Colorscheme not available")
  return
end
