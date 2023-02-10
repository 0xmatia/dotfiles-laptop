--------------------------------------------------------------
-- Rust LSP specific configuration
--------------------------------------------------------------

-- lldb path!
local extension_path = vim.env.HOME .. '/.local/share/nvim/mason/packages/codelldb/extension/'
local codelldb_path = extension_path .. 'adapter/codelldb'
local liblldb_path = extension_path .. 'lldb/lib/liblldb.so'

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
	dap = {
		adapter = require('rust-tools.dap').get_codelldb_adapter(
			codelldb_path, liblldb_path)
	}
}
