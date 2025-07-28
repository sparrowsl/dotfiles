return {
	"akinsho/bufferline.nvim",
	version = "*",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			mode = "buffers", -- set to "tabs" to only show tabpages instead
			buffer_close_icon = "✗",
			-- modified_icon = "●",
			close_icon = "✗",
			-- left_trunc_marker = "",
			-- right_trunc_marker = "",
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function(count, level, _, _)
				local icon = level:match("error") and " " or " "
				return " " .. icon .. count
			end,
		},
	},
	keys = {
		-- { "<leader>bd", "<Cmd>bd<CR>", desc = "Delete Current Buffer", mode = "n" },
		{ "<leader>bn", "<Cmd>BufferLineCycleNext<CR>", desc = "Move to next Buffer", mode = "n" },
		{ "<leader>bp", "<Cmd>BufferLineCyclePrev<CR>", desc = "Move to prev Buffer", mode = "n" },
	},
}
