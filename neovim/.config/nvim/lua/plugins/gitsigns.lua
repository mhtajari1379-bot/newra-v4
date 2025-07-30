return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup()
    local map = vim.keymap.set
    local opts = { silent = true, noremap = true }
    local extend = vim.tbl_extend
    map('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', extend('force', opts, { desc = 'Git Preview' }))
  end,
}
