local lspsaga_status, lspsaga = pcall(require, 'lspsaga')
if not lspsaga_status then
	return
end

lspsaga.setup({
	symbols_in_winbar = {
		enable = true,
	}
})

