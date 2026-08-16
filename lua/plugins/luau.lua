return {
  {
    "lopi-py/luau-lsp.nvim",
    opts = {
      platform = {
        type = "roblox",
      },
      sourcemap = {
        enabled = true,
        autogenerate = true,
        rojo_project_file = "default.project.json",
        sourcemap_file = "sourcemap.json",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        luau_lsp = { enabled = false },
      },
    },
  },
}
