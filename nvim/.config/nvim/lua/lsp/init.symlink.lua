local lsp_installer = require("nvim-lsp-installer")

local on_attach = require("lsp/helpers/on_attach")
local efm = require("lsp/servers/efm")

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

local enhance_server_opts = {
	["efm"] = efm,
}

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = on_attach,
	}

	-- (optional) Customize the options passed to the server
	-- if server.name == "tsserver" then
	--     opts.root_dir = function() ... end
	-- end
	if enhance_server_opts[server.name] then
		enhance_server_opts[server.name](opts)
	end

	if server.name == "tsserver" then
		opts.on_attach = function(client)
			client.resolved_capabilities.document_formatting = false
			on_attach(client)
		end
	else
		opts.on_attach = on_attach
	end

	opts.flags = {
		debounce_text_changes = 150,
	}
	opts.capabilities = capabilities

	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)
