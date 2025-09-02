return {
	-- Detect tabstop and shiftwidth automatically
	{ "tpope/vim-sleuth" },

	{
		"sindrets/diffview.nvim",
		-- event = "VeryLazy",
		opts = {
			view = {
				merge_tool = {
					layout = "diff3_mixed",
					disable_diagnostics = true,
				},
			},
		},
	},

	{ "folke/lazydev.nvim", ft = "lua", opts = {} },

	-- Highlight todo, notes, etc in comments
	-- { "folke/todo-comments.nvim", event = "VeryLazy", opts = {} },
}
