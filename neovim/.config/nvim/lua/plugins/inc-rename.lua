return {
  'smjonas/inc-rename.nvim',
  opts = {},
  config = function()
    require('inc_rename').setup {}
    local map = vim.keymap.set
    local opts = { silent = true, noremap = true }
    local extend = vim.tbl_extend
    map('n', '<leader>r', '<cmd>IncRename ', extend('force', opts, { desc = 'Inc Rename' }))
  end,
}
