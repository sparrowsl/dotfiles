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
}
