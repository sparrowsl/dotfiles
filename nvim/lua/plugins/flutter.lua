return {
	"nvim-flutter/flutter-tools.nvim",
	lazy = false,
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
		{ "<leader>fr", "<CMD> <CR>", desc = "[F]lutter [R]eload running project", mode = "n" },
		{ "<leader>fR", "<CMD> <CR>", desc = "[F]lutter [R]estart current project", mode = "n" },
	},
}
