local lsp_installer = require("nvim-lsp-installer")

local on_attach = require("lsp/helpers/on_attach")

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
	local opts = {}

	-- (optional) Customize the options passed to the server
	-- if server.name == "tsserver" then
	--     opts.root_dir = function() ... end
	-- end
	if server.name == "efm" then
		opts = {
			filetypes = { "lua" },
			init_options = { documentFormatting = true },
			settings = {
				languages = {
					lua = {
						{ formatCommand = "stylua -s -", formatStdin = true },
					},
				},
			},
		}
	end

	opts.on_attach = on_attach
	opts.flags = {
		debounce_text_changes = 150,
	}
	opts.capabilities = capabilities

	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)
