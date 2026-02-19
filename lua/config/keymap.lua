-- use space as leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- easier way to leave terminal mode
vim.keymap.set('t', '<leader><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- resize splits
vim.keymap.set('n', '<C-left>', ':QuickResize h<CR>')
vim.keymap.set('n', '<C-right>', ':QuickResize l<CR>')
vim.keymap.set('n', '<C-up>', ':QuickResize k<CR>')
vim.keymap.set('n', '<C-down>', ':QuickResize j<CR>')

-- better navigation between splits
vim.keymap.set('n', '<C-J>', '<C-W><C-J>', { desc = 'Move focus to lower window' })
vim.keymap.set('n', '<C-H>', '<C-W><C-H>', { desc = 'Move focus to left window' })
vim.keymap.set('n', '<C-K>', '<C-W><C-K>', { desc = 'Move focus to upper window' })
vim.keymap.set('n', '<C-L>', '<C-W><C-L>', { desc = 'Move focus to right window' })

-- insert newline without enter insert mode
vim.keymap.set('n', '<leader>O', ":-put =''<CR>", { desc = 'Insert newline above without enter insert mode', silent = true })
vim.keymap.set('n', '<leader>o', ":put =''<CR>", { desc = 'Insert newline below without enter insert mode', silent = true })

-- quick line moving (normal mode)
vim.keymap.set('n', '<M-k>', ':m -2<CR>', { desc = 'Moves line up', silent = true })
vim.keymap.set('n', '<M-j>', ':m +1<CR>', { desc = 'Moves line down', silent = true })

-- quick line moving (visual mode)
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv", { desc = "Move block up", silent = true })
vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv", { desc = "Move block down", silent = true })

-- run <leader>mvn instead of :!mvn spring-boot: argument
vim.keymap.set("n", "<leader>mvn", function()
  local actions = { "run", "clean", "package", "install", "test" }

  vim.ui.select(actions, {
    prompt = "mvn spring-boot:",
  }, function(choice)
    if not choice then
      return
    end

    vim.cmd("!mvn spring-boot:" .. choice)
  end)
end, { desc = "Maven Spring Boot" })

