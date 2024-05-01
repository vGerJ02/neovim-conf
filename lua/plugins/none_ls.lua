return {
	"nvimtools/none-ls.nvim",
	keys = {
		{
			"<leader>cf",
			function()
				vim.lsp.buf.format()
			end,
		},
	},
}
