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
				b = { "Buffers" },
				f = { name = "+Find" },
				e = { "Explorer" },
			}

		})
	end,
}

