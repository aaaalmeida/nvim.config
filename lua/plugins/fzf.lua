return {
    {
	"ibhagwan/fzf-lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
        { "<leader>ff", function() require("fzf-lua").files() end, desc = "FZF: Find Files" },
        { "<leader>fb", function() require("fzf-lua").buffers() end, desc = "FZF: Find Buffers" },
        { "<leader>fh", function() require("fzf-lua").help_tags() end, desc = "FZF: Find Help" },
        { "<leader>fg", function() require("fzf-lua").grep() end, desc = "FZF: Find Grep" }},
    },
}

