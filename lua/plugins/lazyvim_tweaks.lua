return {
  {
    "folke/noice.nvim",
    enabled = false,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_lines = false,
        virtual_text = true,
      },
    },
    keys = {
      {
        "<leader>dd",
        function()
          local current_lines = vim.diagnostic.config().virtual_lines

          if current_lines then
            -- Switch from virtual_lines to virtual_text
            vim.diagnostic.config({
              virtual_lines = false,
              virtual_text = true,
            })
            vim.notify("Switched to virtual text", vim.log.levels.INFO)
          else
            -- Switch from virtual_text to virtual_lines
            vim.diagnostic.config({
              virtual_lines = true,
              virtual_text = false,
            })
            vim.notify("Switched to virtual lines", vim.log.levels.INFO)
          end
        end,
        desc = "Toggle diagnostic display mode",
      },
      {
        "<leader>de",
        vim.diagnostic.setloclist,
        desc = "Open diagnostic [E]rrors list",
        vim.notify("Showing Errors", vim.log.levels.INFO),
      },
    },
  },
}
