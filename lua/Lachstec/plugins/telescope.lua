local status, telescope = pcall(require, 'telescope.builtin')
local keymap = vim.keymap

if not status then
  return
end

keymap.set('n', '<leader>ff', telescope.find_files, {})
keymap.set('n', '<leader>fg', telescope.live_grep, {})
keymap.set('n', '<leader>fb', telescope.buffers, {})
keymap.set('n', '<leader>fh', telescope.help_tags, {})



