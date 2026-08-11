return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "ruff",
        "jedi-language-server",
        "gopls",
        "rust-analyzer",
        "bacon-ls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {},
        jedi_language_server = {},
        gopls = {},
        rust_analyzer = {},
        bacon_ls = {},
      },
    },
  },
}
