-- https://github.com/CopilotC-Nvim/CopilotChat.nvim
return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		opts = {
			debug = true, -- Enable debugging
			window = {
				layout = "horizontal",
			},
			-- See Configuration section for rest
		},
		-- See Commands section for default commands if you want to lazy load on them
	},
}