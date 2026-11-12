return {
	{
		"lervag/vimtex",
		ft = "tex",
		config = function()
			vim.g.vimtex_syntax_custom = { envs = {}, commands = {}, math_inline_envs = {} }
			vim.g.vimtex_compiler_latexmk = {
				options = {
					"-shell-escape",
					"-synctex=1",
					"-interaction=nonstopmode",
				},
			}
			vim.g.vimtex_view_method = "zathura"
			vim.g.vimtex_quickfix_mode = 0
			vim.g.vimtex_syntax_conceal = {
				accents = true,
				bundles = true,
				citation = true,
				fancy = true,
				math = true,
				scripts = true,
			}
		end,
	},
}
