--------------------------------------------------------------
-- Lsp installer configuration
--------------------------------------------------------------

-- Supported / configured LSPs
local servers = {
	"sumneko_lua",
	"pyright",
	"rust_analyzer",
	"marksman",
	"clangd"
}

local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

local lspconf_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not lspconf_status_ok then
	return
end

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

mason.setup(settings)
mason_lspconfig.setup({
	ensure_installed = servers,
	automatic_installation = true,
})


local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("user.lsp.handler").on_attach,
		capabilities = require("user.lsp.handler").capabilities,
	}

	if server == 'rust_analyzer' then
		local rust_opts = require("user.lsp.settings.rust")
		require("rust-tools").setup(rust_opts)
		goto continue
	end

	-- Great way to include lsp-specific settings without adding an if statement for each lsp.
	-- (Rust is an exception because of rust-tools). Taken from https://github.com/LunarVim/nvim-basic-ide
	local require_ok, conf_opts = pcall(require, "user.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
	::continue::
end
