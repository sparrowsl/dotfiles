return {
	-- Detect tabstop and shiftwidth automatically
	{ "tpope/vim-sleuth" },

	{
		"akinsho/git-conflict.nvim",
		lazy = true,
		version = "*",
		opts = {
			disable_diagnostics = true,
		},
	},

	{ "folke/lazydev.nvim", ft = "lua", opts = {} },

	-- Highlight todo, notes, etc in comments
	{ "folke/todo-comments.nvim", opts = {} },

	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
}
