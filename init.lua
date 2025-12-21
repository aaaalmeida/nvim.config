-- use space as prefix for custom commands
vim.g.mapleader = " "

-- show numbers absolute and relative numbers before lines
vim.opt.number = true
vim.opt.relativenumber = true

-- identation
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

-- no line wrap
vim.opt.wrap = false

-- highlight cursor line
vim.opt.cursorline = true

-- autocomplete cmds
vim.opt.showcmd = true

-- activate true colors
vim.opt.termguicolors = true

-- integrate with clipboard
vim.opt.clipboard = "unnamedplus"

-- ignore case when search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- reload files when changed outside vim
vim.opt.autoread = true
vim.opt.updatetime = 300

-- import 
require("plugins")
require("autocommands")

