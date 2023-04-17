local treesitter_status, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_status then
  return
end

treesitter.setup{
  autotag = {
    enable = true
  }
}
