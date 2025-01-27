return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
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

			-- ghost_text = { enabled = true },
			menu = { auto_show = true },
		},
		sources = {
			cmdline = {},
		},
	},
}
