local status_ok, mason = pcall(require, 'mason')
if not status_ok then
	return
end

local statuslsp_ok, masonlsp = pcall(require, 'mason-lspconfig')
if not statuslsp_ok then
	return
end

local servers = {
	"lua_ls",
	"pyright",
	"clangd",
	"jdtls",
}

mason.setup()
masonlsp.setup({
	ensure_installed = servers,
	automatic_installation = true,
})


local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end


local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("core.lsp.handlers").on_attach,
		capabilities = require("core.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	local require_ok, conf_opts = pcall(require, "core.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end

