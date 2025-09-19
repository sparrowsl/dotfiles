return {
  "echasnovski/mini.nvim",
  event = "VeryLazy",
  config = function()
    require("mini.animate").setup()

    require("mini.comment").setup()

    require("mini.notify").setup()
    -- require("mini.indentscope").setup()
    -- require("mini.ai").setup({ n_lines = 500 })
    -- require("mini.surround").setup()

    require("mini.move").setup({
      mappings = {
        -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
        down = '<Alt-Down>',
        up = '<Alt-Up>',
        -- Move current line in Normal mode
        line_down = '<Alt-Down>',
        line_up = '<Alt-Up>',
      },
    })

    require("mini.pairs").setup()

    local statusline = require("mini.statusline")
    statusline.setup({ use_icons = vim.g.have_nerd_font, lazy = false })

    -- cursor location to LINE:COLUMN
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return "%2l:%-2v"
    end

    require('mini.starter').setup({
      header = "Hello, Sparrow!",
    })

    require('mini.trailspace').setup()
  end,
}
