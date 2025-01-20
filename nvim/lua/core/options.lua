vim.g.have_nerd_font = true

vim.g.zig_fmt_autosave = 0 -- disable format on save from ziglang/zig.vim
vim.g.zig_fmt_parse_errors = 0 -- don't show parse errors in a separate window

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus" -- Sync clipboard between OS and Neovim.
vim.opt.wrap = false -- Line wrap
vim.opt.linebreak = true
vim.opt.mouse = "a" -- Enable mouse mode!
vim.opt.autoindent = true
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.tabstop = 2 -- Insert spaces for tabs
vim.opt.shiftwidth = 2 -- Number of spaces for each indent
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.softtabstop = 2 -- One tab equals 2 spaces, (amount of spaces a tab is)
vim.opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor (default: 0)
vim.opt.sidescrolloff = 8 -- Minimal number of screen columns either side of cursor if wrap is `false` (default: 0)
vim.opt.cursorline = true -- Highlight the current line (default: false)
vim.opt.splitbelow = true -- Force all horizontal splits to go below current window (default: false)
vim.opt.splitright = true -- Force all vertical splits to go to the right of current window (default: false)
vim.opt.hlsearch = true -- Set highlight on search (default: true)
vim.opt.showmode = false -- We don't need to see things like -- INSERT -- anymore (default: true)
vim.opt.termguicolors = true -- Set termguicolors to enable highlight groups (default: false)
-- vim.opt.whichwrap = 'bs<>[]hl' -- Which "horizontal" keys are allowed to travel to prev/next line (default: 'b,s')
-- vim.opt.numberwidth = 4 -- Set number column width to 2 {default 4} (default: 4)
vim.opt.swapfile = false -- Creates a swapfile (default: true)
vim.opt.smartindent = true -- Make indenting smarter again (default: false)
-- vim.opt.showtabline = 2 -- Always show tabs (default: 1)
vim.opt.backspace = "indent,eol,start" -- Allow backspace on (default: 'indent,eol,start')
-- vim.opt.pumheight = 10 -- Pop up menu height (default: 0)
vim.opt.conceallevel = 0 -- So that `` is visible in markdown files (default: 1)
vim.opt.signcolumn = "yes" -- Keep signcolumn on by default (default: 'auto')
-- vim.opt.fileencoding = 'utf-8' -- The encoding written to a file (default: 'utf-8')
-- vim.opt.cmdheight = 1 -- More space in the Neovim command line for displaying messages (default: 1)
vim.opt.breakindent = true -- Enable break indent (default: false)
vim.opt.updatetime = 250 -- Decrease update time (default: 4000)
vim.opt.timeoutlen = 300 -- Time to wait for a mapped sequence to complete (in milliseconds) (default: 1000)
vim.opt.backup = false -- Creates a backup file (default: false)
vim.opt.writebackup = false -- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited (default: true)
vim.opt.undofile = true -- Save undo history (default: false)
-- vim.opt.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience (default: 'menu,preview')
-- vim.opt.shortmess:append 'c' -- Don't give |ins-completion-menu| messages (default: does not include 'c')
-- vim.opt.iskeyword:append '-' -- Hyphenated words recognized by searches (default: does not include '-')
-- vim.opt.formatoptions:remove { 'c', 'r', 'o' } -- Don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode. (default: 'croql')
vim.opt.inccommand = "split" -- Preview substitutions live, as you type!

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.fillchars = { eob = "~" }
