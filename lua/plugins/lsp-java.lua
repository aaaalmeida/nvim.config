return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.config("jdtls", {
            cmd = { "jdtls" },
            filetypes = {
                "java",
                "kt" --kotlin
            },
            root_makers = {
                "pom.xml", 
                "build.gradle",
                ".git"
            },
        })
        vim.lsp.enable("jdtls")
    end,
}

