return {
	-- Detect tabstop and shiftwidth automatically
	{ "tpope/vim-sleuth" },

	{
		"akinsho/git-conflict.nvim",
		-- lazy = true,
		event = "VeryLazy",
		version = "*",
		opts = {
			disable_diagnostics = true,
		},
	},

	-- {
	-- 	"sindrets/diffview.nvim",
	-- 	-- lazy = true,
	-- event = "VeryLazy",
	-- 	opts = {
	-- 		view = {
	-- 			merge_tool = {
	-- 				layout = "diff3_mixed",
	-- 				-- disable_diagnostics = true,
	-- 			},
	-- 		},
	-- 	},
	-- },

	-- {
	-- 	"nvim-lualine/lualine.nvim",
	-- 	event = "VeryLazy",
	-- 	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- 	opts = {},
	-- },

	{ "folke/lazydev.nvim", ft = "lua", opts = {} },

	-- Highlight todo, notes, etc in comments
	{ "folke/todo-comments.nvim", event = "VeryLazy", opts = {} },

	-- {
	-- 	"lukas-reineke/indent-blankline.nvim",
	-- 	main = "ibl",
	-- 	event = "VeryLazy",
	-- 	opts = {
	-- 		whitespace = {
	-- 			highlight = { "Whitespace", "NonText" },
	-- 		},
	-- 		indent = {
	-- 			char = "▏",
	-- 		},
	-- 		scope = {
	-- 			show_start = false,
	-- 			show_end = false,
	-- 			show_exact_scope = true,
	-- 		},
	-- 	},
	-- },
}
