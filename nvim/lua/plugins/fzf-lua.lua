return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    local fzf_lua = require("fzf-lua")
    -- calling `setup` is optional for customization
    -- fzf_lua.setup({ "fzf-native" })
    fzf_lua.register_ui_select()

    vim.keymap.set("n", "<leader>sh", fzf_lua.helptags, { desc = "[S]earch [H]elp" })
    vim.keymap.set("n", "<leader>sk", fzf_lua.keymaps, { desc = "[S]earch [K]eymaps" })
    vim.keymap.set("n", "<leader>sf", fzf_lua.files, { desc = "[S]earch [F]iles" })
    vim.keymap.set("n", "<leader>ss", fzf_lua.builtin, { desc = "[S]earch [S]elect Telescope" })
    vim.keymap.set("n", "<leader>sw", fzf_lua.grep_curbuf, { desc = "[S]earch grep [W]ord in buffer" })
    vim.keymap.set("n", "<leader>/", fzf_lua.lgrep_curbuf, { desc = "[S]earch Current Buffer" })
    vim.keymap.set("n", "<leader>sg", fzf_lua.live_grep_native, { desc = "[S]earch by [G]rep in current project" })
    vim.keymap.set("n", "<leader>q", fzf_lua.diagnostics_document, { desc = "Open diagnostic [Q]uickfix list" })
    vim.keymap.set("n", "<leader>sr", fzf_lua.resume, { desc = "[S]earch [R]esume" })
    vim.keymap.set("n", "<leader>s.", fzf_lua.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
    vim.keymap.set("n", "<leader><leader>", fzf_lua.buffers, { desc = "[ ] Find existing buffers" })
    vim.keymap.set("n", "<leader>su", fzf_lua.spell_suggest, { desc = "[S]pell S[u]ggestions" })
    vim.keymap.set("n", "<leader>sp", fzf_lua.grep_project, { desc = "[S]earch [P]rojects" })

    vim.keymap.set("n", "<leader>sn", function()
      fzf_lua.files({ cwd = vim.fn.stdpath("config") })
    end, { desc = "[S]earch [N]eovim files" })
  end,
}
