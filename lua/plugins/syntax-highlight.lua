local treesitter_status, treesitter = pcall(require, 'nvim-treesitter')
if not treesitter_status then
	return
end

treesitter.setup({
	-- list of parsers or simply all
	ensure_installed = { "all" },
	-- dont install parsers synchronously
	sync_install = false,
	-- automatically install missing parser when entering buffer
	auto_install = false,
	highlight = {
		-- false here disables whole extension
		enable = true
	}

})
