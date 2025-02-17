return {
	"stevearc/oil.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		columns = {
			"icon",
			-- "permissions",
			"size",
			-- "mtime",
		},
		-- delete_to_trash = true,
		keymaps = {
			["<C-c>"] = false,
			["q"] = "actions.close",
		},
	},
	keys = {
		{ "-", "<Cmd>Oil --float<CR>", desc = "Open Oil.nvim", mode = "n" },
	},
}
