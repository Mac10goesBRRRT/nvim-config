local lspconfig_status, lspconfig = pcall(require, 'lspconfig')
if not lspconfig_status then
	return
end
local bindings_status, bindings = pcall(require, 'plugins/lsps/bindings')
if not bindings_status then
	return
end
lspconfig.rust_analyzer.setup({
	on_attach = bindings.on_attach
})
