return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
	},
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
	-- config = function()
	-- 	vim.opt.conceallevel = 2
	-- end,
}
