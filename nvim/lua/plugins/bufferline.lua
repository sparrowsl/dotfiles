return {
	"akinsho/bufferline.nvim",
	version = "*",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			mode = "buffers", -- set to "tabs" to only show tabpages instead
			themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
			numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
			close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
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
			show_tab_indicators = false,
		},
	},
	keys = {
		{ "<leader>bd", "<Cmd>bd<CR>", desc = "Delete Current Buffer", mode = "n" },
		-- { "<leader>bn", "<Cmd>BufferLineMoveNext<CR>", desc = "Move to next Buffer", mode = "n" },
		-- { "<leader>bp", "<Cmd>BufferLineMovePrev<CR>", desc = "Move to prev Buffer", mode = "n" },
	},
}
