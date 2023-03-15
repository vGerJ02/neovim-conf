local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "[f]ind [f]iles"})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {desc = "[f]ind [s]tring in workspace"})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {desc = "[f]ind [g]it files"})
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {desc = "[f]ind [f]iles"})

