-- get nvim keymap
local map = vim.api.nvim_set_keymap
-- set leader key to ,
vim.g.mapleader = ","
-- map key n to toggle nvim-tree
map('n', '<leader>e', [[:NvimTreeToggle<CR>]], {})


