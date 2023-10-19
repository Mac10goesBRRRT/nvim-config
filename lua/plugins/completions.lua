-- completeopt is used to manage code suggestions
-- menuone: show popup even when there is just one suggestion
-- noinsert: only insert text when selection is confirmed
-- noselect: force to select one from the suggestions
vim.opt.completeopt = { 'menuone', 'noselect', 'noinsert', 'preview' }
-- shortmess is used to avoid excessive, huge messages
vim.opt.shortmess = vim.opt.shortmess + { c = true }

local cmp_status, cmp = pcall(require, 'cmp')
if not cmp_status then
	return
end

cmp.setup({
	-- key mappings for completion
	mapping = {
		-- Shift + Tab = goto previous item
		['<S-Tab>'] = cmp.mapping.select_prev_item(),
		-- Tab = goto next item
		['<Tab>'] = cmp.mapping.select_next_item(),
		-- Ctrl + Shift + f = scroll back in the docs
		['<C-S-f>'] = cmp.mapping.scroll_docs(-4),
		-- Ctrl + f = scroll forward in the docs
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		-- Ctrl + Space = open completions
		['<C-Space>'] = cmp.mapping.complete(),
		-- Ctrl + e = exit suggestion and close
		['<C-e>'] = cmp.mapping.close(),
		-- Enter = accept suggestion and insert it
		['<CR>'] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		})
	},
	-- sources for completions
	sources = {
		{ name = 'path' },
		{ name = 'nvim_lsp', keyword_length = 3 },
		{ name = 'nvim_lsp_signature_help' },
		{ name = 'nvim_lua', keyword_length = 2 },
		{ name = 'buffer', keyword_length = 2 },
		{ name = 'vsnip', keyword_length = 2 },
	},
	-- borders for the suggestion window
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	-- add formation to mark the different sources
	formatting = {
		fields = { 'menu', 'abbr', 'kind' },
		format = function(entry, item)
			local menu_icon = {
				nvim_lsp = 'λ',
				vsnip = '⋗',
				buffer = 'b',
				path = 'p'
			}
			item.menu = menu_icon[entry.source.name]
			return item
		end,
	},
})
