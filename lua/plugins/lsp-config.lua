return {
  {
    "williamboman/mason.nvim",
    config = function()
      local mason = require("mason")
      mason.setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      local mason_lspconfig = require("mason-lspconfig")
      mason_lspconfig.setup({
        ensure_installed = { "lua_ls", "tsserver" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({
        init_options = {
          preferences = {
            disableSuggestions = true,
          },
        },
      })

      local map = vim.keymap.set
      map("n", "K", vim.lsp.buf.hover, {})
      map("n", "gd", vim.lsp.buf.definition, {})
      map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          require("none-ls.diagnostics.eslint_d"),
        },
      })

      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
  },
}
