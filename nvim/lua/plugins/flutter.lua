return {
	"nvim-flutter/flutter-tools.nvim",
	ft = "dart",
	ependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = true,
	opts = {
		widget_guides = {
			enabled = true,
		},
		lsp = {
			colors = {
				enabled = true,
				background = true,
			},
		},
	},
	keys = {
		{ "<leader>rr", "<CMD> <CR>", desc = "[R]eload [R]unning project", mode = "n" },
		{ "<leader>rs", "<CMD> <CR>", desc = "[R]e[s]tart current flutter project", mode = "n" },
	},
}
