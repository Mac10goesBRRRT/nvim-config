-- get nvim keymap
local map = vim.api.nvim_set_keymap

-- map key n to toggle nvim-tree
map('n', 'n', [[:NvimTreeToggle<CR>]], {})
