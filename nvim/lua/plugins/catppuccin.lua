return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
			dim_inactive = {
				enabled = true, -- dims the background color of inactive window
			},
		})

		vim.cmd.colorscheme("catppuccin-mocha")
	end,
}
