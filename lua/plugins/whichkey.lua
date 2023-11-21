return {
	"folke/which-key.nvim",
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
		require("which-key").setup({})
		local wk = require("which-key")

		wk.register({
			["<leader>"] = {
				a = { "Show function" },
				b = { name = "+Buffers" },
				f = { name = "+Find" },
				e = { "Explorer" },
				g = { name = "+Git" },
				t = { name = "+Terminal" },
				c = { name = "+Code" },
				u = { name = "+Undo" },
				l = { name = "+Lsp" }
			}

		})
	end,
}
