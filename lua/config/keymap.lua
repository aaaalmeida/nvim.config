-- use space as leader
vim.g.mapleader = " "

-- clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- easier way to leave terminal mode
vim.keymap.set('t', '<leader><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- better navigation between splits
vim.keymap.set('n', '<C-H>', '<C-W><C-H>', { desc = 'Move focus to left window' })
vim.keymap.set('n', '<C-J>', '<C-W><C-J>', { desc = 'Move focus to lower window' })
vim.keymap.set('n', '<C-K>', '<C-W><C-K>', { desc = 'Move focus to upper window' })
vim.keymap.set('n', '<C-L>', '<C-W><C-L>', { desc = 'Move focus to right window' })

