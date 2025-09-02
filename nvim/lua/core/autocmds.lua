-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
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
			context = { only = { "source.fixAll", "source.organizeImports" }, diagnostics = {} },
			apply = true,
		})
	end,
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client and client:supports_method("textDocument/completion") then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end,
})

-- Autoformat on save using only built-in LSP
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function(args)
		local bufnr = args.buf
		local disable_filetypes = { c = false, cpp = true }

		if disable_filetypes[vim.bo[bufnr].filetype] then
			return
		end

		vim.lsp.buf.format({
			bufnr = bufnr,
			timeout_ms = 500,
			async = false, -- keep it sync so it finishes before saving
		})
	end,
})
