vim.g.mapleader = " "
vim.g.maplocalleader = ","

local bind = vim.keymap.set
local map = vim.api.nvim_set_keymap

--Default
bind("n", "<leader>q", vim.cmd.q, {desc = "[q]uit"})
bind("n", "<leader>w", vim.cmd.w, {desc = "[w]rite changes"})

--Plugins
require("core.lazy")

--------------------------------------------------------------------------------UndoTree
bind('n', '<leader>ut', vim.cmd.UndotreeToggle, {desc = "[u]ndo [t]ree"})

--------------------------------------------------------------------------------Explorer
bind('n', '<leader>e', vim.cmd.NvimTreeToggle)
bind('n', '<leader><esc>', vim.cmd.NvimTreeFocus, {desc = "Focus explorer"})


--------------------------------------------------------------------------------Barbar

local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-q>', '<Cmd>BufferClose<CR>', opts)
--Pick buffer
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)


--------------------------------------------------------------------------------Teminal
--For navigating easier in the terminal
function _G.set_terminal_keymaps()
	vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)

	bind('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
	bind('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
	bind('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
	bind('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
	bind('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
-- Multiple terminals with <id><C-\>
map('n', '<Leader>/', '<cmd>ToggleTerm direction=float<cr>', opts)
map('n', '<Leader>th', '<cmd>ToggleTerm size=20 direction=horizontal<cr>', opts)
map('n', '<Leader>tv', '<cmd>ToggleTerm size=50 direction=vertical<cr>', opts)


--------------------------------------------------------------------------------Fuzzy
local builtin = require('telescope.builtin')
bind('n', '<leader>ff', builtin.find_files, {desc = "[f]ind [f]iles"})
bind('n', '<leader>fs', builtin.live_grep, {desc = "[f]ind [s]tring in workspace"})
bind('n', '<leader>fg', builtin.git_files, {desc = "[f]ind [g]it files"})
bind('n', '<leader>fb', builtin.buffers, {desc = "[f]ind [b]uffers"})
bind('n', '<leader>fk', builtin.keymaps, {desc = "[f]ind [k]eymaps"})


-------------------------------------------------------------------------------Git
bind('n','<leader>gg', '<cmd>LazyGit<cr>', opts)



---lsp
bind('n','<leader>cf', vim.lsp.buf.format, opts)
