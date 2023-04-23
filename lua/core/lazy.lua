local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	--Themes
	"shaunsingh/nord.nvim",
	{ 'rose-pine/neovim', as = 'rose-pine'},

	{
		'nvim-lualine/lualine.nvim',
		config = function() require("plugins.lualine") end,
		dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true },
	},

	{
		'nvim-treesitter/nvim-treesitter', 
		config = function() require("plugins.treesitter") end,
		build =':TSUpdate'
	},

	{
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},


	{
		'mbbill/undotree',
		config = function() require("plugins.undotree") end,
	},

	{
		'nvim-tree/nvim-tree.lua',
		config = function() require("plugins.tree-explorer") end,
		dependencies = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	},

	{
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	},

	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		config = function() require("plugins.tree-explorer") end,
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional 
		},
	},

	{
		"akinsho/toggleterm.nvim", 
		tag = '*', 
		config = function()
			require("toggleterm").setup()
			require("plugins.toggleterm")
		end
	},

	{
		"ahmedkhalf/project.nvim",
		config = function()
			require("project_nvim").setup {}
		end
	},

	'nvim-tree/nvim-web-devicons',

	{
		'romgrk/barbar.nvim', 
		dependencies = 'nvim-web-devicons', 
		config = function() 
			require("plugins.barbar") 
		end
	},

	{
		"folke/which-key.nvim",
		config = function()
			require("plugins.whichkey")
		end
	},
}


require("lazy").setup(plugins)

