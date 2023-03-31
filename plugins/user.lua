return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "barklan/capslock.nvim",
    event = "BufRead",
    config = function()
      require("capslock").setup()
    end,
  },
  {
    "freddiehaddad/feline.nvim",
    config = function()
      local ctp_feline = require('catppuccin.groups.integrations.feline')

      ctp_feline.setup({
        assets = {
          left_separator = "",
          right_separator = "",
          mode_icon = "",
          dir = "",
          file = "",
          lsp = {
            server = "",
            error = "",
            warning = "",
            info = "",
            hint = "",
          },
          git = {
            branch = "󰊢",
            added = "",
            changed = "",
            removed = "",
          },
        },
      })

      require("feline").setup({
        components = ctp_feline.get(),
      })
    end
  }
}
