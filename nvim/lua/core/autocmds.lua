-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Change indentation level to 4 for these languages
for _, extension in ipairs({ "go", "py" }) do
	vim.api.nvim_create_autocmd("FileType", {
		pattern = extension,
		command = "set tabstop=4 shiftwidth=4 softtabstop=4",
	})
end

-- Formatting with ZLS matches `zig fmt`.
-- The Zig FAQ answers some questions about `zig fmt`:
-- https://github.com/ziglang/zig/wiki/FAQ
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.zig", "*.zon" },
	callback = function()
		vim.lsp.buf.format()
		vim.lsp.buf.code_action({
			---@diagnostic disable-next-line: missing-fields
			context = { only = { "source.fixAll", "source.organizeImports" } },
			apply = true,
		})
	end,
})
