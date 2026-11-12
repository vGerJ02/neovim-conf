return {
	"ghillb/cybu.nvim",
	lazy = true,
	opts = {},

	keys = {
		-- { "J", "<cmd>TSJToggle<cr>", desc = "Join Toggle" },
		{ "<M-h>", "<Plug>(CybuPrev)", mode = "n" },
		{ "<M-l>", "<Plug>(CybuNext)", mode = { "n", "v" } },
	},
}
