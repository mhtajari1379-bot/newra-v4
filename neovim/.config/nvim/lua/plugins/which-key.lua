return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    preset = 'helix',
    defaults = {},
    spec = {
      { '<leader>b', group = 'Buffer' },
      { '<leader>w', group = 'Window' },
      { '<leader>g', group = 'Git' },
      { '<leader>s', group = 'Session' },
    },
  },
  keys = {
    {
      '<leader>?',
      function()
        require('which-key').show { global = false }
      end,
      desc = 'Buffer Local Keymaps (which-key)',
    },
  },
}
