return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	opts = {
		servers = {
			lua_ls = {},
		},
	},
	config = function()
		--Side signs
		local signs = {
			{ name = "DiagnosticSignError", text = "" },
			{ name = "DiagnosticSignWarn", text = "" },
			{ name = "DiagnosticSignHint", text = "" },
			{ name = "DiagnosticSignInfo", text = "" },
		}

		for _, sign in ipairs(signs) do
			vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
		end

		local config = {
			-- disable virtual text
			virtual_text = true,
			-- show signs
			signs = {
				active = signs,
			},
			update_in_insert = true,
			underline = true,
			severity_sort = true,
			-- float = {
			-- 	focusable = false,
			-- 	style = "minimal",
			-- 	border = "rounded",
			-- 	source = "always",
			-- },
		}

		vim.diagnostic.config(config)
	end,
}
