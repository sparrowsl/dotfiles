-- Main LSP Configuration
return {
  -- Automatically install LSPs and related tools to stdpath for Neovim
  -- Mason must be loaded before its dependents so we need to set it up here.
  { "williamboman/mason.nvim", opts = {} },
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  -- Allows extra capabilities provided by blink.cmp
  "saghen/blink.cmp",
  config = function()
    local servers = {
      -- clangd = {},
      -- gopls = {},
      pyright = {},
      biome = {
        filetypes = {
          -- "css",
          "javascript",
          "javascriptreact",
          "json",
          "jsonc",
          -- "svelte",
          "typescript",
          "typescript.tsx",
          "typescriptreact",
        },
        root_dir = require("lspconfig.util").root_pattern("biome.json", "biome.jsonc"),
        single_file_support = true,
      },
      prettierd = {},
      emmet_language_server = {
        filetypes = {
          "css",
          "html",
          "javascriptreact",
          "typescriptreact",
        },
      },
      jsonls = {},
      html = {},
      cssls = {},
      sqlls = {
        filetypes = { "sql" },
      },
      svelte = {
        filetypes = { "svelte" },
      },
      tailwindcss = {
        filetypes = {
          -- HTML
          "html",
          "markdown",
          -- CSS
          "css",
          -- JS
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          -- Framework DSL
          -- "vue",
          "svelte",
        },
        settings = {
          tailwindCSS = {
            validate = true,
            classAttributes = {
              "class",
              "className",
              "classList",
            },
            includeLanguages = {},
          },
        },
      },
      -- vtsls = {},
    }

    -- You can add other tools here that you want Mason to install
    -- for you, so that they are available from within Neovim.
    local ensure_installed = vim.tbl_keys(servers or {})
    vim.list_extend(ensure_installed, { "stylua" })
    require("mason-tool-installer").setup({ ensure_installed = ensure_installed })
    for server, cfg in pairs(servers) do
      vim.lsp.config(server, cfg)
      vim.lsp.enable(server)
    end
  end,
}
