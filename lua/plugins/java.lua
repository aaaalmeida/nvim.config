return {
  {
    "nvim-java/nvim-java",
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
    },
    config = function()
      require("java").setup()
      vim.lsp.enable("jdtls")
    end,
  },

}

