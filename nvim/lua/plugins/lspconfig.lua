return {
  -- Mason must be loaded before its dependents so we need to set it up here.
  { "williamboman/mason.nvim", opts = {} },
  "https://github.com/neovim/nvim-lspconfig",
  "saghen/blink.cmp", -- Allows extra capabilities provided by blink.cmp
  opts = {}
}
