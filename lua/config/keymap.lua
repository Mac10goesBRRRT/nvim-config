-- get nvim keymap
local map = vim.api.nvim_set_keymap

-- map key n to toggle nvim-tree
map('n', 'n', [[:NvimTreeToggle<CR>]], {})

-- set leader key to ,
vim.g.mapleader = ","
