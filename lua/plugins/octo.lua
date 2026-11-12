local function is_gh_installed()
	return vim.fn.executable("gh") == 1
end

return is_gh_installed()
		and {
			"pwntester/octo.nvim",
			requires = {
				"nvim-lua/plenary.nvim",
				"nvim-telescope/telescope.nvim",
				-- OR 'ibhagwan/fzf-lua',
				-- OR 'folke/snacks.nvim',
				"nvim-tree/nvim-web-devicons",
			},
			opts = {},
		}
	or {}
