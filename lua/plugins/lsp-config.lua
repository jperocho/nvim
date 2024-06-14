return {
  {
    'williamboman/mason.nvim',
    config = function()
      local mason = require('mason')
      mason.setup()
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      local mason_lspconfig = require('mason-lspconfig')
      mason_lspconfig.setup({
        ensure_installed = { 'lua_ls' }
      })
    end,
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    end,
  }
}
