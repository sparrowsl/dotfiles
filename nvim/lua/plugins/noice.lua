return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
    -- Disable LSP integrations (hover, signature help, progress, etc.)
      lsp = {
      progress = { enabled = false },
      override = {},
      hover = { enabled = false },
      signature = { enabled = false },
      message = { enabled = false },

        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          -- ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
      },

      cmdline = {
      enabled = true,
      -- view = "cmdline_popup", -- or "cmdline" for classic bottom line
    },

    -- Disable all messages (so Noice doesn't replace :messages, notifications, etc.)
    messages = { enabled = false },

    -- Disable popupmenu (leave your completion menu untouched)
    popupmenu = { enabled = false },

    -- Disable Noice as a notification router
    notify = { enabled = false },


		messages = {
			enabled = false, -- enables the Noice messages UI
		},
	},
	-- dependencies = {
	-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
	-- "MunifTanjim/nui.nvim",
	-- "rcarriga/nvim-notify",
	-- },
}
