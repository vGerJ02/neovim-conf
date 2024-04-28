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
	-- config = function()
	-- 	local null_ls_status_ok, null_ls = pcall(require, "null-ls")
	-- 	if not null_ls_status_ok then
	-- 		return
	-- 	end
	--
	-- 	-- https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTIN_CONFIG.md
	-- 	-- code action sources
	-- 	local code_actions = null_ls.builtins.code_actions
	--
	-- 	-- diagnostic sources
	-- 	local diagnostics = null_ls.builtins.diagnostics
	--
	-- 	-- formatting sources
	-- 	local formatting = null_ls.builtins.formatting
	--
	-- 	-- hover sources
	-- 	local hover = null_ls.builtins.hover
	--
	-- 	-- completion sources
	-- 	local completion = null_ls.builtins.completion
	--
	-- 	null_ls.setup({
	-- 		debug = false,
	-- 		sources = {
	-- 			formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote" } }),
	-- 			formatting.black.with({ extra_args = { "--fast" } }),
	-- 			formatting.stylua,
	-- 			-- diagnostics.eslint_d,
	-- 			-- diagnostics.flake8
	-- 		},
	-- 	})
	-- end,
}
