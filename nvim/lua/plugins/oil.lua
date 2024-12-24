return {
	"stevearc/oil.nvim",
	keys = {
		{ "-", "<Cmd>Oil --float<CR>", desc = "Open Oil.nvim", mode = "n" },
	},
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	opts = {
		delete_to_trash = true,
		keymaps = {
			["<C-c>"] = false,
			["q"] = "actions.close",
		},
	},
}
