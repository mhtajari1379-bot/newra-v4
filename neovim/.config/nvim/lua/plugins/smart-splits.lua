return {
  'mrjones2014/smart-splits.nvim',
  config = function()
    local map = vim.keymap.set
    local ss = require 'smart-splits'
    map('n', '<A-h>', ss.resize_left)
    map('n', '<A-j>', ss.resize_down)
    map('n', '<A-k>', ss.resize_up)
    map('n', '<A-l>', ss.resize_right)
    map('n', '<C-h>', ss.move_cursor_left)
    map('n', '<C-j>', ss.move_cursor_down)
    map('n', '<C-k>', ss.move_cursor_up)
    map('n', '<C-l>', ss.move_cursor_right)
  end,
}
