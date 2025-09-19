return {
  -- Detect tabstop and shiftwidth automatically
  { "tpope/vim-sleuth" },
  { "folke/lazydev.nvim", ft = "lua", opts = {} },

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
