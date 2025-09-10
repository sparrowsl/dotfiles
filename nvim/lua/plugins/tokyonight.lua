return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    require("tokyonight").setup({
      styles = {
        functions = { italic = true },
        variables = { italic = true },
      },
    })

    vim.cmd.colorscheme("tokyonight")
  end,
}
