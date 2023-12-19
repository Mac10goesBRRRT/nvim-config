local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	-- LSP Management
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	-- Completion Suite by Hrsh7th
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/vim-vsnip'
	-- luasnip so that lua ls stops complaining
	use 'L3MON4D3/LuaSnip'
	-- nvim-tree and icons
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons',
		},
	}
	-- color theme
	use { "ellisonleao/gruvbox.nvim", as = "gruvbox"}
	-- use { 'catppuccin/nvim', as = "catppuccin" }
	-- tree sitter for better highlight 
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}
	-- lualine for style
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	-- lspsaga for better lsp experience
	use {
		'nvimdev/lspsaga.nvim',
		branch = 'main',
		after = 'nvim-lspconfig',
		dependencies = {
			'nvim-treesitter/nvim-treesitter',
			'nvim-tree/nvim-web-devicons'
		}
	}
	-- telescope for fuzzy finding
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = { { 'nvim-lua/plenary.nvim' } },
	}
	-- autopairs for ergonomics
	use 'windwp/nvim-autopairs'
	-- gitsigns for style
	use 'lewis6991/gitsigns.nvim'

	if packer_bootstrap then
		require('packer').sync()
	end
end)
