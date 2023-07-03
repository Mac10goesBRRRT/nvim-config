vim.g.mapleader = ","

local keymap = vim.keymap

-- bindings for nvim tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle explorer
-- remap copilot keybinding for accepting suggestion 
keymap.set("i", "<leader>a", 'copilot#Accept("<CR>")', { expr = true, silent = true })

