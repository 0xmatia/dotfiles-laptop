--------------------------------------------------------------
-- Rust LSP specific configuration
--------------------------------------------------------------

return {
	server = {
		on_attach = require("user.lsp.handler").on_attach,
		capabilities = require("user.lsp.handler").capabilities,
		settings = {
			["rust-analyzer"] = {
				assist = {
					importGranularity = "module",
					importPrefix = "self",
				},
				cargo = {
					loadOutDirsFromCheck = true,
				},
				procMacro = {
					enable = true,
				},
				lens = {
					enabled = true,
				},
				checkOnSave = {
					command = "clippy",
				},
				inlayHints = {
					lifetimeElisionHints = {
						enable = true,
					},
				},

			},
		},
	},
	tools = {
		on_initialized = function()
			vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "CursorHold", "InsertLeave" }, {
				pattern = { "*.rs" },
				callback = function()
					vim.lsp.codelens.refresh()
				end,
			})
		end,
		inlay_hints = {
			parameter_hints_prefix = " ",
			other_hints_prefix = " ",
		},
	},
}
