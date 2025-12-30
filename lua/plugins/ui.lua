return {
    -- gruvbox theme
    {
	    "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("gruvbox")
        end,
    },

    -- lua line
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = { 
            theme = "gruvbox",
            }
    },

    -- icons
    {
        "nvim-tree/nvim-web-devicons"
    },
}

