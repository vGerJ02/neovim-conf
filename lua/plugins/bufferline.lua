return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			indicator = {
				style = "underline",
			},
			separator_style = "thin",
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function(_, _, diagnostics_dict, _)
				local s = " "
				for e, n in pairs(diagnostics_dict) do
					local sym = e == "error" and " " or (e == "warning" and " " or "")
					s = s .. n .. sym
				end
				return s
			end,
			offsets = {
				{
					filetype = "NvimTree",
					text = " ",
					highlight = "Directory",
					text_align = "left",
					separator = true,
				},
			},
		},
	},
}
