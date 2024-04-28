return {
	"jay-babu/mason-null-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim",
		"nvimtools/none-ls.nvim",
	},
	config = function()
		require("plugins.formatting")
		require("mason-null-ls").setup({
			ensure_installed = { "prettier", "eslint_d", "stylua" },
		})
	end,
}
