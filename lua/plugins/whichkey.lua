return {
	"folke/which-key.nvim",
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
		require("which-key").setup({})
		local wk = require("which-key")

		wk.add({
			{ "<leader>a", desc = "Show functions" },
			{ "<leader>e", desc = "Explorer" },
			{ "<leader>b", group = "+Buffers" },
			{ "<leader>f", group = "+Find" },
			{ "<leader>g", group = "+Git" },
			{ "<leader>t", group = "+Terminal" },
			{ "<leader>c", group = "+Code" },
			{ "<leader>u", group = "+Undo" },
		})
	end,
}
