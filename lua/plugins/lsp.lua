return {
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
      setup = {
        bacon_ls = function(_, opts)
          require("lspconfig").bacon_ls.setup(opts)
          return true
        end,
      },
    },
  },
}
