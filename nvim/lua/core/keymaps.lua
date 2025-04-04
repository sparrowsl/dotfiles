vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true }) -- Disable the spacebar key's default behavior
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { noremap = true, silent = true }) -- save file
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { noremap = true, silent = true }) -- Set highlight on search, but clear on pressing <Esc> in normal mode

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move focus to the left window", noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right window", noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move focus to the lower window", noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move focus to the upper window", noremap = true, silent = true })

-- Window Management
vim.keymap.set("n", "<leader>v", "<C-w>v", { silent = true, noremap = true, desc = "Split Window [V]ertically" })
vim.keymap.set("n", "<leader>h", "<C-w>s", { silent = true, noremap = true, desc = "Split Window [H]orizontally" })

-- Line Wrapping
vim.keymap.set(
	"n",
	"<leader>lw",
	"<cmd>set wrap!<CR>",
	{ silent = true, noremap = true, desc = "Toggle [L]ine [W]rap" }
)

-- Diagnostic keymaps
vim.keymap.set("n", "[d", function()
	vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", function()
	vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Go to next [D]iagnostic message" })
-- vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- vim.keymap.set("n","K",vim.lsp.buf.hover,{desc="Hover"})
