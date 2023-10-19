local lspconfig_status, lspconfig = pcall(require, 'lspconfig')
if not lspconfig_status then
	return
end
local util_status, util = pcall(require, 'lspconfig/util')
if not util_status then
	return
end

lspconfig.lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' },
			},
		},
		workspace = {
			library = {
				[vim.fn.expand('$VIMRUNTIME/lua')] = true,
				[vim.fn.stdpath('config') .. '/lua'] = true,
			},
		},
	},
})
