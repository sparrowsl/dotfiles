return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",

	version = "*",
	opts = {
		keymap = {
			preset = "super-tab",

			["<CR>"] = { "accept", "fallback" },
			-- ["<Tab>"] = {
			-- 	function(cmp)
			-- 		if cmp.snippet_active() then
			-- 			return cmp.accept()
			-- 		else
			-- 			return cmp.select_and_accept()
			-- 		end
			-- 	end,
			-- 	"snippet_forward",
			-- 	"fallback",
			-- },
		},

		appearance = {
			-- use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},

		signature = {
			enabled = true,
		},
		completion = {
			ghost_text = {
				enabled = false,
			},
		},
		sources = {
			-- min_keyword_length = 2,
			cmdline = {},
		},
	},
}
