return {
  {
    "folke/noice.nvim",
    enabled = false,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_lines = true,
        virtual_text = false,
      },
    },
  },
}
