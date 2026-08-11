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
        "luau-lsp",
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
        luau_lsp = {
          settings = {
            ["luau-lsp"] = {
              platform = {
                type = "roblox",
              },
              sourcemap = {
                autogenerate = true,
                rojoProjectFile = "default.project.json",
              },
            },
          },
        },
      },
    },
  },
}
