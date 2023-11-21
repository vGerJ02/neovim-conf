require("core")
vim.opt.termguicolors = true
-- vim.cmd("colorscheme kanagawa")
-- vim.cmd [[colorscheme nord]]


--GitSignsDelete
--GitSignsAdd

-- require('rose-pine').setup({
-- 	disable_background = true,
-- })
vim.cmd('colorscheme rose-pine')

-- Transparency
vim.cmd('highlight GitSignsAdd guibg=NONE')
vim.cmd('highlight GitSignsDelete guibg=NONE')
vim.cmd('highlight GitSignsChange guibg=NONE')
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
