require("core.options")
require("core.keymaps")
require("core.autocmds")

-- See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    error("Error cloning lazy.nvim:\n" .. out)
  end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  require("plugins.tokyonight"),
  -- require("plugins.rose-pine"),
  require("plugins.treesitter"),
  require("plugins.blink"),
  require("plugins.bufferline"),
  require("plugins.gitsigns"),
  require("plugins.which-key"),
  require("plugins.snacks"),
  require("plugins.flutter"),
  require("plugins.fzf-lua"),
  require("plugins.lspconfig"),
  -- require("plugins.conform"),
  require("plugins.mini"),
  require("plugins.misc"),
})

-- LSP servers and clients are able to communicate to each other what features they support.
--  By default, Neovim doesn't support everything that is in the LSP specification.
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, require("blink.cmp").get_lsp_capabilities())
capabilities.textDocument.onTypeFormatting = { dynamicRegistration = false }

-- Set default for all clients
vim.lsp.config("*", {
  root_markers = { ".git" },
  capabilities = capabilities,
})

vim.lsp.enable({ "luals", "gopls", "clangd", "vtsls", "zls" })
