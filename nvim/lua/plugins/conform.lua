-- Autoformat
return {
  "stevearc/conform.nvim",
  -- event = { "VeryLazy", "BufWritePre" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        c = { "clangd", lsp_format = "fallback" },
        python = { "ruff", lsp_format = "fallback" },
        javascript = { "biome", "prettierd", stop_after_first = true, lsp_format = "fallback" },
        typescript = { "biome", "prettierd", stop_after_first = true, lsp_format = "fallback" },
      },
    })
  end
}
