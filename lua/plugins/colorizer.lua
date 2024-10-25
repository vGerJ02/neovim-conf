return {
	"norcalli/nvim-colorizer.lua",
	cmd = { "ColorizerToggle", "ColorizerAttachToBuffer", "ColorizerDetachFromBuffer", "ColorizerReloadAllBuffers" },
	ft = { "javascript", "javascriptreact", "typescript", "typescriptreact", "css" },
	init = function()
		vim.g.termguicolors = true
	end,
	opts = {},
	config = function()
		require("colorizer").setup()
	end,
}
