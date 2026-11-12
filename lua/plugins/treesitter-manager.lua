return {
	"romus204/tree-sitter-manager.nvim",
	dependencies = {}, -- tree-sitter CLI must be installed system-wide
	opts = {
		auto_install = true, -- if enabled, install missing parsers when editing a new file
		-- Default Options
		-- ensure_installed = {}, -- list of parsers to install at the start of a neovim session
		-- border = nil, -- border style for the window (e.g. "rounded", "single"), if nil, use the default border style defined by 'vim.o.winborder'. See :h 'winborder' for more info.
		-- highlight = true, -- treesitter highlighting is enabled by default
		-- languages = {}, -- override or add new parser sources
	},
}
