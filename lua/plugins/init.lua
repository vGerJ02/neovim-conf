return {
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{ "norcalli/nvim-colorizer.lua", opts = {} },
	{
		"chomosuke/typst-preview.nvim",
		ft = "typst",
		version = "1.*",
		opts = {},
	},
}
