return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
	event = "VeryLazy",
	version = "*",
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = {
			preset = "super-tab",

			["<CR>"] = { "accept", "fallback" },
		},

		signature = { enabled = true },
		completion = {
			accept = { auto_brackets = { enabled = false } },

			trigger = { show_in_snippet = false },
			-- documentation = { treesitter_highlighting = false },

			list = {
				max_items = 100,
				selection = { preselect = true, auto_insert = false },
			},

			ghost_text = { enabled = true, show_with_menu = false },
		},

		cmdline = {},
	},
}
