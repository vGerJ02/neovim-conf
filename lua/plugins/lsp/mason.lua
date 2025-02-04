local on_attach = require("core.mappings.lsp").on_attach

return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		mason.setup()

		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"pyright",
				"clangd",
				"ts_ls",
				"volar",
			},

			automatic_installation = true,
		})

		mason_lspconfig.setup_handlers({
			-- The first entry (without a key) will be the default handler
			-- and will be called for each installed server that doesn't have
			-- a dedicated handler.
			function(server_name) -- default handler (optional)
				require("lspconfig")[server_name].setup({
					on_attach = on_attach,
					capabilities = cmp_nvim_lsp.default_capabilities(),
				})
			end,
			-- Next, you can provide a dedicated handler for specific servers.
			-- For example, a handler override for the `rust_analyzer`:
			-- ["rust_analyzer"] = function()
			-- 	require("rust-tools").setup {}
			-- end
			["lua_ls"] = function()
				local lspconfig = require("lspconfig")
				lspconfig.lua_ls.setup({
					on_attach = on_attach,
					capabilities = cmp_nvim_lsp.default_capabilities(),
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
							},
						},
					},
				})
			end,
			["ts_ls"] = function()
				local lsp = require("lspconfig")
				local mason_registry = require("mason-registry")
				local vue_language_server_path = mason_registry.get_package("vue-language-server"):get_install_path()
					.. "/node_modules/@vue/language-server"
				lsp.ts_ls.setup({
					on_attach = on_attach,
					capabilities = cmp_nvim_lsp.default_capabilities(),
					init_options = {
						preferences = {
							disableSuggestions = false,
						},
						plugins = {
							{
								name = "@vue/typescript-plugin",
								location = vue_language_server_path,
								languages = { "vue" },
							},
						},
					},
					filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
				})
			end,
		})
	end,
}
