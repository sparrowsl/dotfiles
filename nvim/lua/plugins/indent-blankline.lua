return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		whitespace = {
			highlight = { "Whitespace", "NonText" },
		},
		indent = {
			char = "▏",
		},
		scope = {
			show_start = false,
			show_end = false,
			show_exact_scope = true,
		},
	},
}
