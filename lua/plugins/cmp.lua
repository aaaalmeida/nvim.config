return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
    },
    config = function()
        local cmp = require("cmp")
        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<CR>"] = cmp.mapping.confirm({ select = true }) -- accept selected item
            }),

            sources = cmp.config.sources({
                { name = "nvim_lsp" }, -- LSP
                { name = "buffer" }, -- buffer
            }),
        })
    end,
}

