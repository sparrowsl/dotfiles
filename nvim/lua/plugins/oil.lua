return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		delete_to_trash = true,
		keymaps = {
			["<C-c>"] = false,
			["q"] = "actions.close",
		},
	},
	keys = {
		{ "-", "<Cmd>Oil --float<CR>", desc = "Open Oil.nvim", mode = "n" },
	},
}
