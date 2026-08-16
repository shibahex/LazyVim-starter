return {
  "vyfor/cord.nvim",
  config = function()
    require("cord").setup({
      editor = {
        client = "neovim",
        tooltip = "linux btw",
      },
      idle = {
        enable = true,
        show_status = true,
        timeout = 150000,
      },
      extensions = {
        "tmux",
      },
      text = {
        editing = function(opts)
          -- local current_tag = vim.fn['tagbar#currenttag']('%s', '', 'f')
          current_tag = ""
          -- if empty put file name
          if current_tag == "" then
            current_tag = opts.filename
          end

          return string.format("🐕 %s (%s)", current_tag, opts.cursor_line)
        end,
        workspace = function(opts)
          return string.format("%s; %s", opts.workspace, opts.filename)
        end,
        -- editing = function(opts)
        --   local current_tag = vim.fn['tagbar#currenttag']('%s', '', 'f')
        --
        --   -- local diagnostics = vim.diagnostic.get(0, { severity = { min = vim.diagnostic.severity.ERROR } })
        --   --
        --   -- if #diagnostics > 0 then
        --   --   return string.format('💀 %s errors %s %s:%s', #diagnostics, opts.filename, opts.cursor_line, opts.cursor_char)
        --   -- end
        --   return string.format('🌊 %s %s:%s %s', opts.filename, opts.cursor_line, opts.cursor_char, current_tag)
        -- end,
        viewing = "Viewing ${filename} - ${problems} problems",
      },
    })
  end,
}
