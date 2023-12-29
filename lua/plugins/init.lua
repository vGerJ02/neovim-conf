return {
	-- Themes
	{ "shaunsingh/nord.nvim",        name = "nord", lazy = true },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = { disable_background = true, disable_float_background = true },
	},

	{ "nvim-lualine/lualine.nvim",   opts = {} },
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{ "nvim-lua/plenary.nvim",       lazy = true },

	"mbbill/undotree",
	{ "windwp/nvim-autopairs",   opts = {} },

	{
		"folke/which-key.nvim",
		config = function()
			require("plugins.whichkey")
		end,
	},
	{ "numToStr/Comment.nvim",   opts = {} },

	--Git
	{ "kdheepak/lazygit.nvim",   lazy = true, cmd = { "LazyGit" } },
	{ "lewis6991/gitsigns.nvim", opts = {} },
	"brenoprata10/nvim-highlight-colors",
	{"b0o/incline.nvim", opts = {}}
}
