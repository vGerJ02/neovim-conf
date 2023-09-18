return {
	-- Themes
	{ "shaunsingh/nord.nvim",        name = 'nord',   lazy = true },
	{ 'rose-pine/neovim',            as = 'rose-pine' },

	{ 'nvim-lualine/lualine.nvim',   opts = {} },
	{ 'nvim-tree/nvim-web-devicons', lazy = true },
	{ 'nvim-lua/plenary.nvim',       lazy = true },

	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
	},

	'mbbill/undotree',
	{ "windwp/nvim-autopairs",   opts = {} },

	'romgrk/barbar.nvim',

	{
		"folke/which-key.nvim",
		config = function()
			require("plugins.whichkey")
		end
	},


	--Git
	{ 'kdheepak/lazygit.nvim',   lazy = true, cmd = { 'LazyGit' } },
	{ 'lewis6991/gitsigns.nvim', opts = {} }
}
