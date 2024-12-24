-- Highlight, edit, and navigate code
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs", -- Sets main module to use for opts
	-- [[ Configure Treesitter ]] See `:help nvim-treesitter`
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"css",
			-- "diff",
			"go",
			"html",
			"javascript",
			"json",
			"lua",
			-- "luadoc",
			"markdown",
			"markdown_inline",
			-- "prisma",
			-- "python",
			"sql",
			"svelte",
			-- "typescript",
			-- "vim",
			-- "vimdoc",
		},
		-- Autoinstall languages that are not installed
		auto_install = true,
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
	},
}
