return {
	-- Themes
	{ "shaunsingh/nord.nvim", name = "nord" },
	{
		"rose-pine/neovim",
		name = "rose-pine",
	},
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "rebelot/kanagawa.nvim" },
	{
		"maxmx03/solarized.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = {
				enabled = true,
			},
			palette = "selenized",
		},
	},
}
