vim.g.mapleader = " "
vim.g.maplocalleader = ","

local bind = vim.keymap.set
local map = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

--Auxiliar functions
local function optsWithDesc(options, desc)
	local custom_opts = vim.tbl_extend("keep", { desc = desc }, options)
	return custom_opts
end

--Default
bind("n", "<leader>q", vim.cmd.q, { desc = "[q]uit" })
bind("n", "<leader>w", vim.cmd.w, { desc = "[w]rite changes" })
bind("n", "<leader>W", vim.cmd.wqall, { desc = "[W]rite all changes and quit" })
bind("i", "jj", "<Esc>", optsWithDesc(opts, "Go normal"))

--Windows
bind("n", "<C-h>", "<C-w>h", optsWithDesc(opts, "Focus left window"))
bind("n", "<C-l>", "<C-w>l", optsWithDesc(opts, "Focus right window"))
bind("n", "<C-j>", "<C-w>j", optsWithDesc(opts, "Focus down window"))
bind("n", "<C-k>", "<C-w>k", optsWithDesc(opts, "Focus upper window"))

--Resize
bind("n", "<C-Up>", ":resize +2<CR>", optsWithDesc(opts, "Resize up"))
bind("n", "<C-Down>", ":resize -2<CR>", optsWithDesc(opts, "Resize down"))
bind("n", "<C-Left>", ":vertical resize -2<CR>", optsWithDesc(opts, "Resize left"))
bind("n", "<C-Right>", ":vertical resize +2<CR>", optsWithDesc(opts, "Resize right"))

-- Registers
bind("n", ",p", '"0p', optsWithDesc(opts, "Paste last yank register"))
bind("n", ",P", '"0P', optsWithDesc(opts, "Paste last yank register"))

--Theme
bind(
	"n",
	"<leader>tb",
	":lua require('core.theme').toggle_background()<CR>",
	optsWithDesc(opts, "Toggle background transparency")
)

--Plugins
require("core.lazy")

--------------------------------------------------------------------------------UndoTree
bind("n", "<leader>ut", vim.cmd.UndotreeToggle, { desc = "[u]ndo [t]ree" })

--------------------------------------------------------------------------------Explorer
-- bind("n", "<leader>e", vim.cmd.NvimTreeToggle)
-- bind("n", "<leader><esc>", vim.cmd.NvimTreeFocus, { desc = "Focus explorer" })
-- bind(
-- 	"n",
-- 	"<leader>bcd",
-- 	":cd %:p:h<CR>:NvimTreeOpen %:p:h<CR>",
-- 	optsWithDesc(opts, "Change to current buffer file directory")
-- )
bind("n", "<leader>e", "<Cmd>lua MiniFiles.open()<CR>", opts)

--------------------------------------------------------------------------------Barbar
-- NOW USING BUFFERLINE
--
-- -- Move to previous/next
-- map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
-- map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- -- Re-order to previous/next
-- map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
-- map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- -- Goto buffer in position...
-- map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
-- map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
-- map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
-- map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
-- map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
-- map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
-- map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
-- map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
-- map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
-- map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- -- Pin/unpin buffer
-- map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- -- Close buffer
-- map('n', '<A-q>', '<Cmd>BufferClose<CR>', opts)
-- --Pick buffer
-- map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- -- Sort automatically by...
-- map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', optsWithDesc(opts, "Order by buffer number"))
-- map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', optsWithDesc(opts, "Order by directory"))
-- map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', optsWithDesc(opts, "Order by language"))
-- map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', optsWithDesc(opts, "Order by window number"))
--
-- Move to previous/next
map("n", "<A-,>", "<Cmd>BufferLineCyclePrev<CR>", opts)
map("n", "<A-.>", "<Cmd>BufferLineCycleNext<CR>", opts)
-- Re-order to previous/next
map("n", "<A-<>", "<Cmd>BufferLineMovePrev<CR>", opts)
map("n", "<A->>", "<Cmd>BufferLineMoveNext<CR>", opts)
-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferLineGoToBuffer 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferLineGoToBuffer 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferLineGoToBuffer 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferLineGoToBuffer 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferLineGoToBuffer 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferLineGoToBuffer 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferLineGoToBuffer 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferLineGoToBuffer 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferLineGoToBuffer 9<CR>", opts)
-- map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map("n", "<A-p>", "<Cmd>BufferLineTogglePin<CR>", opts)
-- Close buffer
map("n", "<A-q>", "<Cmd>bp|bd#<CR>", opts)
--Pick buffer
map("n", "<C-p>", "<Cmd>BufferLinePick<CR>", opts)
-- Sort automatically by...
map("n", "<Space>bb", "<Cmd>BufferLineSortByTabs<CR>", optsWithDesc(opts, "Order by tabs"))
map("n", "<Space>bd", "<Cmd>BufferLineSortByDirectory<CR>", optsWithDesc(opts, "Order by directory"))
map("n", "<Space>bl", "<Cmd>BufferLineSortByExtension<CR>", optsWithDesc(opts, "Order by file extension"))
map("n", "<Space>bw", "<Cmd>BufferLineSortByRelativeDirectory<CR>", optsWithDesc(opts, "Order by relative directory"))

--------------------------------------------------------------------------------Teminal
--For navigating easier in the terminal
function _G.set_terminal_keymaps()
	vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<C-\><C-n>]], opts)

	bind("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	bind("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	bind("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	bind("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	bind("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
-- Multiple terminals with <id><C-\>
map("n", "<Leader>/", "<cmd>ToggleTerm size=15 direction=horizontal<cr>", optsWithDesc(opts, "Floating term"))
map("n", "<Leader>tf", "<cmd>ToggleTerm direction=float<cr>", optsWithDesc(opts, "Floating term"))
map("n", "<Leader>th", "<cmd>ToggleTerm size=20 direction=horizontal<cr>", optsWithDesc(opts, "Horizontal term"))
map("n", "<Leader>tv", "<cmd>ToggleTerm size=50 direction=vertical<cr>", optsWithDesc(opts, "Vertical term"))

--------------------------------------------------------------------------------Fuzzy
local builtin = require("telescope.builtin")
bind("n", "<leader>ff", builtin.find_files, { desc = "[f]ind [f]iles" })
bind("n", "<leader>fs", builtin.live_grep, { desc = "[f]ind [s]tring in workspace" })
bind("n", "<leader>fg", builtin.git_files, { desc = "[f]ind [g]it files" })
bind("n", "<leader>fb", builtin.buffers, { desc = "[f]ind [b]uffers" })
bind("n", "<leader>fk", builtin.keymaps, { desc = "[f]ind [k]eymaps" })

-------------------------------------------------------------------------------Git
opts.desc = "Open Lazy Git"
bind("n", "<leader>gg", "<cmd>LazyGit<cr>", opts)
opts.desc = "Check git status"
bind("n", "<leader>gs", "<cmd>Telescope git_status<cr>", opts)
opts.desc = "Check git commits"
bind("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", opts)
opts.desc = "Check git branches"
bind("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", opts)
opts.desc = "Check git stash"
bind("n", "<leader>gh", "<cmd>Telescope git_stash<cr>", opts)
opts.desc = ""

---lsp
-- bind('n','<leader>cf', vim.lsp.buf.format, optsWithDesc(opts, "Code format"))
