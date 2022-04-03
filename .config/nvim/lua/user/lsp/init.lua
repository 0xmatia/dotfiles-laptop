-------------------------------------------------------------
-- LSP Configuration
-------------------------------------------------------------

local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("user.lsp.lsp_installer") -- nvim lsp installer
require("user.lsp.handler").setup() -- configuration setup for the lsp server
