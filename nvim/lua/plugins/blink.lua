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

		appearance = { nerd_font_variant = "normal" },
		signature = { enabled = true },
		completion = {
			documentation = {
				auto_show = true,
				-- treesitter_highlighting = false,
			},
			-- trigger = { show_in_snippet = false },

			list = {
				max_items = 100,
				selection = { auto_insert = false },
			},

			ghost_text = { enabled = true, show_with_selection = false },
			menu = { auto_show = true },
		},
		sources = {},
		cmdline = {
			enabled = false,
		},
	},
}
