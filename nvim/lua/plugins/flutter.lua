return {
	"nvim-flutter/flutter-tools.nvim",
	ft = "dart",
	-- event = "VeryLazy",
	dependencies = {
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
}
