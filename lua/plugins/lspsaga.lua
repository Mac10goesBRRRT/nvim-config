local lspsaga_status, lspsaga = pcall(require, 'lspsaga')
if not lspsaga_status then
	return
end

lspsaga.setup({
	move_in_saga = { prev = '<C-k>', next = '<C-j>' },
	finder_action_key = {
		open = '<CR>',
	},
	definitions_action_keys = {
		edit = '<CR>',
	},
})

