return {
  'mason-org/mason-lspconfig.nvim',
  dependencies = {
    'mason-org/mason.nvim',
    'neovim/nvim-lspconfig',
  },
  opts = {
    ensure_installed = {
      'lua_ls',
      'bashls',
      'fish_lsp',
      'texlab',
      'marksman',
      'ts_ls',
      'html',
      'cssls',
      'jsonls',
      'just',
      'emmet_ls',
    },
  },
}
