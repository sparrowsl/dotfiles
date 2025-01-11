-- Main LSP Configuration
return {
	"neovim/nvim-lspconfig",
	dependencies = {
		-- Automatically install LSPs and related tools to stdpath for Neovim
		-- Mason must be loaded before its dependents so we need to set it up here.
		{ "williamboman/mason.nvim", opts = {} },
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",

		-- Allows extra capabilities provided by blink.cmp
		"saghen/blink.cmp",
	},
	config = function()
		--  This function gets run when an LSP attaches to a particular buffer.
		--    That is to say, every time a new file is opened that is associated with
		--    an lsp (for example, opening `main.rs` is associated with `rust_analyzer`) this
		--    function will be executed to configure the current buffer
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("kickstart-lsp-attach", { clear = true }),
			callback = function(event)
				-- In this case, we create a function that lets us more easily define mappings specific
				-- for LSP related items. It sets the mode, buffer and description for us each time.
				local map = function(keys, func, desc, mode)
					mode = mode or "n"
					vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
				end

				map("gd", vim.lsp.buf.definition, "[G]oto [D]efinition")

				map("gr", vim.lsp.buf.references, "[G]oto [R]eferences")

				map("gI", vim.lsp.buf.implementation, "[G]oto [I]mplementation")

				map("<leader>D", vim.lsp.buf.type_definition, "Type [D]efinition")

				map("<leader>ds", vim.lsp.buf.document_symbol, "[D]ocument [S]ymbols")

				map("<leader>ws", vim.lsp.buf.workspace_symbol, "[W]orkspace [S]ymbols")

				map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")

				map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction", { "n", "x" })

				map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")

				-- The following two autocommands are used to highlight references of the
				-- word under your cursor when your cursor rests there for a little while.
				--    See `:help CursorHold` for information about when this is executed
				--
				-- When you move your cursor, the highlights will be cleared (the second autocommand).
				local client = vim.lsp.get_client_by_id(event.data.client_id)
				if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
					local highlight_augroup = vim.api.nvim_create_augroup("kickstart-lsp-highlight", { clear = false })
					vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
						buffer = event.buf,
						group = highlight_augroup,
						callback = vim.lsp.buf.document_highlight,
					})

					vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
						buffer = event.buf,
						group = highlight_augroup,
						callback = vim.lsp.buf.clear_references,
					})

					vim.api.nvim_create_autocmd("LspDetach", {
						group = vim.api.nvim_create_augroup("kickstart-lsp-detach", { clear = true }),
						callback = function(event2)
							vim.lsp.buf.clear_references()
							vim.api.nvim_clear_autocmds({ group = "kickstart-lsp-highlight", buffer = event2.buf })
						end,
					})
				end

				-- The following code creates a keymap to toggle inlay hints in your
				-- code, if the language server you are using supports them
				if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
					map("<leader>th", function()
						vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = event.buf }))
					end, "[T]oggle Inlay [H]ints")
				end
			end,
		})

		-- Change diagnostic symbols in the sign column (gutter)
		if vim.g.have_nerd_font then
			local signs = { ERROR = "", WARN = "", HINT = "", INFO = "" }
			local diagnostic_signs = {}
			for type, icon in pairs(signs) do
				local hl = "DiagnosticSign" .. type
				vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
				diagnostic_signs[vim.diagnostic.severity[type]] = icon
			end
			vim.diagnostic.config({ signs = { text = diagnostic_signs } })
		end

		-- LSP servers and clients are able to communicate to each other what features they support.
		--  By default, Neovim doesn't support everything that is in the LSP specification.
		--  When you add blink.cmp, nvim-cmp, luasnip, etc. Neovim now has *more* capabilities.
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = vim.tbl_deep_extend("force", capabilities, require("blink.cmp").get_lsp_capabilities())

		local servers = {
			clangd = {},
			gopls = {},
			pyright = {},
			biome = {
				filetypes = {
					-- "css",
					"javascript",
					"javascriptreact",
					"json",
					"jsonc",
					-- "svelte",
					"typescript",
					"typescript.tsx",
					"typescriptreact",
				},
				root_dir = require("lspconfig.util").root_pattern("biome.json", "biome.jsonc"),
				single_file_support = true,
			},
			emmet_language_server = {
				filetypes = {
					"css",
					"html",
					"javascriptreact",
					"typescriptreact",
				},
			},
			-- prismals = {},
			jsonls = {},
			html = {},
			cssls = {
				filetypes = { "css" },
			},
			sqlls = {
				filetypes = { "sql" },
			},
			-- ruff = {},
			svelte = {},
			tailwindcss = {
				-- filetypes copied and adjusted from tailwindcss-intellisense
				filetypes = {
					-- HTML
					-- "astro",
					"html",
					"markdown",
					-- CSS
					"css",
					-- "sass",
					-- "scss",
					-- JS
					"javascript",
					"javascriptreact",
					"typescript",
					"typescriptreact",
					-- mixed
					-- "vue",
					"svelte",
				},
				settings = {
					tailwindCSS = {
						validate = true,
						classAttributes = {
							"class",
							"className",
							-- "class:list",
							"classList",
							-- "ngClass",
						},
						includeLanguages = {},
					},
				},
			},
			-- dockerls = {},
			-- zls = {
			-- 	settings={
			-- 		zls={
			-- 		-- enable_build_on_save = true,
			-- 		}
			-- 	}
			-- },
			-- rust_analyzer = {},
			-- ts_ls = {},
			vtsls = {},
			lua_ls = {
				-- cmd = {...},
				-- filetypes = { ...},
				-- capabilities = {},
				settings = {
					Lua = {
						completion = {
							callSnippet = "Replace",
						},
						format = {
							enable = true,
						},
						diagnostics = {
							-- disable = { "missing-fields" },
							globals = { "vim" },
						},
					},
				},
			},
		}

		-- You can add other tools here that you want Mason to install
		-- for you, so that they are available from within Neovim.
		local ensure_installed = vim.tbl_keys(servers or {})
		vim.list_extend(ensure_installed, {
			"stylua", -- Used to format Lua code
		})
		require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

		require("mason-lspconfig").setup({
			handlers = {
				function(server_name)
					local server = servers[server_name] or {}
					-- This handles overriding only values explicitly passed
					-- by the server configuration above. Useful when disabling
					-- certain features of an LSP (for example, turning off formatting for ts_ls)
					server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
					require("lspconfig")[server_name].setup(server)
				end,
			},
		})
	end,
}
