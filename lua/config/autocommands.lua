-- create dir if not exists when saving new file
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    local dir = vim.fn.expand("<afile>:p:h")
    if vim.fn.isdirectory(dir) == 0 then
        vim.fn.mkdir(dir, p)
    end
  end,
})

-- LSP keybinds
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        local opts = { buffer = event.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

        local wk = require("which-key")
        wk.add({
            {"gd", desc = "LSP: Definition"},
            {"gr", desc = "LSP: References"},
            {"K", desc = "LSP: Hover Documentation"},
            {"<leader>rn", desc = "LSP: Rename on cursor"},
            {"<leader>ca", desc = "LSP: Code Action"},
        })
    end,
})
