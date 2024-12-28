return {
	"nvim-flutter/flutter-tools.nvim",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = true,
	opts = {
		widget_guides = {
			-- enabled = true,
		},
		lsp = {
			colors = {
				enabled = true,
			},
		},
	},
}
