return {
  "jay-babu/mason-null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "nvimtools/none-ls.nvim",
  },
  config = function()
    local null_ls_status_ok, null_ls = pcall(require, "null-ls")
    if not null_ls_status_ok then
      return
    end

    -- https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTIN_CONFIG.md
    -- code action sources
    local code_actions = null_ls.builtins.code_actions

    -- diagnostic sources
    local diagnostics = null_ls.builtins.diagnostics

    -- formatting sources
    local formatting = null_ls.builtins.formatting

    -- hover sources
    local hover = null_ls.builtins.hover

    -- completion sources
    local completion = null_ls.builtins.completion

    require("mason-null-ls").setup({
      ensure_installed = {
        -- Opt to list sources here, when available in mason.
        "prettier",
        "stylua",
      },
      automatic_installation = false,
      handlers = {
        stylua = function(source_name, methods)
          null_ls.setup()
          null_ls.register(null_ls.builtins.formatting.stylua)
        end,
        prettier = function()
          null_ls.setup()
          null_ls.register(formatting.prettier.with({ extra_args = {} }))
        end,
      },
    })

    null_ls.setup({
      sources = {
        -- Anything not supported by mason.
      },
    })
  end
}
