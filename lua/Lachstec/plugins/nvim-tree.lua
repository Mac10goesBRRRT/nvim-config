local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- recommend setting from nvim config
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- setup using defaults
nvimtree.setup({
  sort_by = "case-sensitive",
  filters = {
    dotfiles = false,
    git_ignored = false,
  }
})
