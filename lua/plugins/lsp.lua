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
            },
        })

        -- deno projects
        vim.lsp.config("denols", {
            root_makers = {
            "deno.json",
            "deno.jsonc"
            }
        })

        -- node projects
        vim.lsp.config("ts_ls", {
            root_makers = {
                "package.json"
            }
        })

        vim.lsp.enable({
            "jdtls",
            "denols",
            "ts_ls"
        })
    end,
}

