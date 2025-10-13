return {
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },

  {
    "sindrets/diffview.nvim",
    event = "VeryLazy",
    opts = {
      view = {
        merge_tool = {
          layout = "diff3_mixed",
          disable_diagnostics = true,
        },
      },
    },
  },

  -- Highlight todo, notes, etc in comments
  -- { "folke/todo-comments.nvim", event = "VeryLazy", opts = {} },
}
