return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      messages = {
        enabled = false,
      },
      lsp = {
        progress = {
          enabled = false,
        },
      },
    },
  },
}
