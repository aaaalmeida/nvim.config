return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = { 
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons"
    },
    lazy = false,
    config = function()
        vim.keymap.set("n", "<leader>t", ":Neotree focus filesystem left toggle <CR>", { desc = "TREE: Open/Close filesystem tree" })
    end,    
}

