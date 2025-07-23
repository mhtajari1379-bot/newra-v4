return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require 'telescope.builtin'
    vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader><Tab>', builtin.buffers, { desc = 'Telescope buffers' })
  end,
}
