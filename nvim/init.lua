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
end ---@diagnostic disable-next-line: undefined-field

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.tokyonight"),
	require("plugins.oil"),
	require("plugins.blink"),
	require("plugins.bufferline"),
	require("plugins.gitsigns"),
	require("plugins.which-key"),
	require("plugins.treesitter"),
	-- require("plugins.lualine"),
	-- require("plugins.flutter"),
	require("plugins.telescope"),
	require("plugins.lspconfig"),
	require("plugins.conform"),
	-- require("plugins.indent-blankline"),
	require("plugins.misc"),
	require("plugins.mini"),
})
