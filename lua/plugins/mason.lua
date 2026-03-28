return {
    {
    "mason-org/mason.nvim",
    config = true,
    },

    {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim" },
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "jdtls",
                "denols",
                "ts_ls"
            },
        })
    end,
    },
}

