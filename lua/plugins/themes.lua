return {
	-- Themes
	{ "shaunsingh/nord.nvim", name = "nord" },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		styles = {
			transparency = true,
		},
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
	{
		"folke/tokyonight.nvim",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		config = function()
			-- -@diagnostic disable-next-line: missing-fields
			-- require("tokyonight").setup({
			-- 	styles = {
			-- 		comments = { italic = false }, -- Disable italics in comments
			-- 	},
			-- })
		end,
	},
}
