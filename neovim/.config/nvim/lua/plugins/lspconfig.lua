return {
  'neovim/nvim-lspconfig',
  dependencies = { 'saghen/blink.cmp' },
  opts = {
    servers = {
      lua_ls = {},
      bashls = {},
      fish_lsp = {},
      texlab = {},
      marksman = {},
      ts_ls = {},
      html = {},
      cssls = {},
      jsonls = {},
      just = {},
      emmet_ls = {},
    },
  },
  config = function(_, opts)
    local lspconfig = require 'lspconfig'
    for server, config in pairs(opts.servers) do
      config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
      lspconfig[server].setup(config)
    end
  end,
}
