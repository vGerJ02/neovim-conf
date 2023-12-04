return {
	"xuhdev/vim-latex-live-preview",
	ft = {"tex"},
	keys = {{
			"<leader>lp", "<cmd>LLPStartPreview<cr>", desc = {"Open latex preview"}
	}},
	init = function()
		vim.g.livepreview_previewer = "zathura"
	end,
}
-- return {
-- 		'lervag/vimtex',
-- 		ft = { "tex" },
-- 		init = function ()
-- 				vim.g.vimtex_view_method = 'zathura'
-- 		end
-- }
