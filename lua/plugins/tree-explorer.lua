-- return {
-- 	{
-- 		"nvim-tree/nvim-tree.lua",
-- 		opts = {
-- 			filters = {
-- 				dotfiles = false,
-- 			},
-- 			view = {
-- 				adaptive_size = true
-- 			}
-- 		}
-- 	}
-- }
return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.files").setup()
	end,
	version = "*",
}
