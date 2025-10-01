return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
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

			list = {
				max_items = 10,
				selection = { preselect = true, auto_insert = false },
			},

			ghost_text = { enabled = true, show_with_menu = false },
		},

		cmdline = {
      keymap = {
        ['<CR>'] = { 'accept_and_enter', 'fallback' },
      },
    },

    sources = {
      providers = {
        cmdline = {
          min_keyword_length = function(ctx)
            -- when typing a command, only show when the keyword is 3 characters or longer
            if ctx.mode == 'cmdline' and string.find(ctx.line, ' ') == nil then return 3 end
            return 0
          end
        }
      }
    }
	},
}
