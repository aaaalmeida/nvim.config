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

-- Nerd Font installed
vim.g.have_nerd_font = true

-- new splits will be open at botton and right side
vim.o.splitright = true
vim.o.splitbelow = true

-- minimal screen lines above or bellow cursor
vim.opt.scrolloff = 5

-- inline errors
vim.diagnostic.config({
    virtual_text = {
        spacing = 2
    },
    update_in_text = false,
    severity_sort = true,
    signs = true
})
vim.diagnostic.enable(true)

