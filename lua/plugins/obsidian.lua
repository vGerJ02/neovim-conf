return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
	},
	init = function()
		vim.opt.conceallevel = 2
	end,
	opts = {
		workspaces = {
			{
				name = "meinf",
				path = "~/Documents/MEINF",
			},
			{
				name = "brain",
				path = "~/Documents/brain",
			},
		},
	},
}
