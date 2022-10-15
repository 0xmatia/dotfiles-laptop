-------------------------------------------------------------
-- LSP Configuration
-------------------------------------------------------------

local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("user.lsp.mason") -- nvim lsp installer
require("user.lsp.lsp-signature") -- signature as you type
require("user.lsp.handler").setup() -- configuration setup for the lsp server
require("user.lsp.null-ls") -- inject to lsp
