--------------------------------------------------------------
-- Lsp installer configuration
--------------------------------------------------------------

local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

-- you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("user.lsp.handler").on_attach,
		capabilities = require("user.lsp.handler").capabilities,
	}

	-- specifc server configuration
	 if server.name == "sumneko_lua" then
	 	local sumneko_opts = require("user.lsp.settings.sumneko_lua")
		-- merges two tables (overrides existing keys)
	 	opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	 end

	 if server.name == 'rust_analyzer' then
		local rust_opts = require("user.lsp.settings.rust")
	 	opts = vim.tbl_deep_extend("force", rust_opts, opts)
		require("rust-tools").setup {
			server = vim.tbl_deep_extend("force", server:get_default_options(), opts)
		}
		server:attach_buffers()
		-- require("rust-tools").start_standalone_if_required()
		return
	 end

--	 if server.name == "pyright" then
--		-- local pyright_opts = require("user.lsp.settings.pyright")
--	 	opts = vim.tbl_deep_extend("force", pyright_opts, opts)
--	 end
--
	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)

