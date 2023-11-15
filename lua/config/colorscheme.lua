local catppuccin_status, catppuccin = pcall(require, "catppuccin")
if not catppuccin_status then
	return
end

catppuccin.setup({
	flavour = 'frappe'
})

vim.cmd[[colorscheme catppuccin]]
