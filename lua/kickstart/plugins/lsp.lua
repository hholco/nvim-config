return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'williamboman/mason.nvim', config = true },
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    -- Native vim.lsp.config API (nvim 0.11+)
    vim.lsp.config('clangd', {})

    require('mason-lspconfig').setup {
      ensure_installed = { 'clangd' },
    }

    -- Enable all configured servers
    vim.lsp.enable 'clangd'
  end,
}
