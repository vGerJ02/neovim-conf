return { -- Autoformat
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({ async = true, lsp_format = "fallback" })
				end,
				mode = "",
				desc = "[F]ormat buffer",
			},
		},
		opts = function()
			local formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				go = { "gofumpt" },
			}

			-- Nix formatting comes from the Nix store on NixOS, not Mason.
			local nixos = require("core.nixos")
			if nixos.is_nixos and nixos.executable("nixfmt") then
				formatters_by_ft.nix = { "nixfmt" }
			end

			return {
				notify_on_error = false,
				format_on_save = function(bufnr)
					-- Disable "format_on_save lsp_fallback" for languages that don't
					-- have a well standardized coding style. You can add additional
					-- languages here or re-enable it for the disabled ones.
					local disable_filetypes = { c = true, cpp = true, python = true }
					if disable_filetypes[vim.bo[bufnr].filetype] then
						return nil
					else
						return {
							timeout_ms = 500,
							lsp_format = "fallback",
						}
					end
				end,
				formatters_by_ft = formatters_by_ft,
			}
		end,
	},
	{
		"zapling/mason-conform.nvim",
		cond = function()
			return not require("core.nixos").is_nixos
		end,
		dependencies = {
			"williamboman/mason.nvim",
			"stevearc/conform.nvim",
		},
		opts = {},
	},
}
