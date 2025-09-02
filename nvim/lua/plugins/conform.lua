-- Autoformat
return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "ruff", lsp_format = "fallback" },
				-- rust = { "rustfmt", lsp_format = "fallback" },
				-- Conform will run the first available formatter
				javascript = { "biome", "prettierd", "prettier", stop_after_first = true, lsp_format = "fallback" },
			},
		})
	end
	-- event = { "VeryLazy", "BufWritePre" },
	-- cmd = { "ConformInfo" },
	-- keys = {
	-- 	{
	-- 		"<leader>f",
	-- 		function()
	-- 			require("conform").format({ async = true, lsp_format = "fallback" })
	-- 		end,
	-- 		mode = "",
	-- 		desc = "[F]ormat buffer",
	-- 	},
	-- },
	-- opts = {
	-- 	notify_on_error = false,
	-- 	format_on_save = function(bufnr)
	-- 		local disable_filetypes = { c = false, cpp = true }
	--
	-- 		if disable_filetypes[vim.bo[bufnr].filetype] then
	-- 			return nil
	-- 		else
	-- 			return {
	-- 				timeout_ms = 500,
	-- 				lsp_format = "fallback",
	-- 			}
	-- 		end
	-- 	end,
	--
	-- 	formatters_by_ft = {
	-- 		lua = { "stylua" },
	-- 		python = { "ruff", stop_after_first = true },
	-- 		javascript = { "biome", "prettierd", stop_after_first = true },
	-- 	},
	-- },
}
