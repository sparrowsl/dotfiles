-- Adds git related signs to the gutter, as well as utilities for managing changes
return {
	"lewis6991/gitsigns.nvim",
	event = "VeryLazy",
	opts = {
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
			untracked = { text = "┆" },
		},
	},
	keys = {
		{ "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<CR>", desc = "[T]oggle git [B]lame", mode = "n" },
		{ "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>", desc = "Git [H]unk [P]review", mode = "n" },
		{ "<leader>hi", "<cmd>Gitsigns preview_hunk_inline<CR>", desc = "Git [H]unk Preview [I]nline", mode = "n" },
		{ "<leader>hr", "<cmd>Gitsigns reset_hunk<CR>", desc = "Git [H]unk [R]eset", mode = "n" },
		{ "<leader>hs", "<cmd>Gitsigns select_hunk<CR>", desc = "Git [H]unk [S]elect", mode = "n" },
		{ "<leader>hn", "<cmd>Gitsigns next_hunk<CR>", desc = "Git [H]unk [N]ext", mode = "n" },
	},
}
