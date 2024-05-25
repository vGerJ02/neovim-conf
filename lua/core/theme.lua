vim.cmd("colorscheme rose-pine")
-- vim.cmd("colorscheme nord")

-- Transparency
-- vim.cmd("highlight GitSignsAdd guibg=normal_bg")
-- vim.cmd("highlight GitSignsDelete guibg=NONE")
-- vim.cmd("highlight GitSignsChange guibg=NONE")
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "GitSignsAdd", { guibg = normal_hl.background })

-- local normal_bg = vim.api.nvim_get_hl_by_name("Normal", true)
-- print(vim.inspect(normal_bg))

local M = {}
M.transparent = false
M.normal_bg = vim.api.nvim_get_hl_by_name("Normal", true).background

local function set_transparent()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.cmd.highlight("GitSignsAdd guibg=none")
	vim.cmd.highlight("GitSignsDelete guibg=none")
	vim.cmd.highlight("GitSignsChange guibg=none")
	M.transparent = true
end

function M.toggle_background()
	M.transparent = not M.transparent
	if vim.g.colors_name == "rose-pine" then
		M.set_up_rose(M.transparent)
	else
		if M.transparent then
			set_transparent()
		else
			vim.cmd.colorscheme(vim.g.colors_name)
		end
	end
end

function M.set_up_rose(tranparent)
	require("rose-pine").setup({
		disable_background = tranparent,
		disable_float_background = tranparent,
	})

	if tranparent == true then
		set_transparent()
	else
		-- vim.cmd.colorscheme("rose-pine")
		vim.api.nvim_set_hl(0, "Normal", { bg = M.normal_bg })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = M.normal_bg })
		vim.cmd.highlight("GitSignsAdd guibg=" .. M.normal_bg)
		vim.cmd.highlight("GitSignsDelete guibg=" .. M.normal_bg)
		vim.cmd.highlight("GitSignsChange guibg=" .. M.normal_bg)
	end
end

return M
