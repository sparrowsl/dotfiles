return {
	"folke/snacks.nvim",
	event = "VeryLazy",
	---@type snacks.Config
	opts = {
		---@class snacks.dashboard.Config
		---@field enabled? boolean
		---@field sections snacks.dashboard.Section
		---@field formats table<string, snacks.dashboard.Text|fun(item:snacks.dashboard.Item, ctx:snacks.dashboard.Format.ctx):snacks.dashboard.Text>
		dashboard = {},
	},
}
