return {
  'sindrets/diffview.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local map = vim.keymap.set
    local function toggle_diffview()
      local lib = require 'diffview.lib'
      if lib.get_current_view() then
        vim.cmd 'DiffviewClose'
      else
        vim.cmd 'DiffviewOpen'
      end
    end
    map('n', '<leader>gd', toggle_diffview, { desc = 'Toggle Diffview' })
  end,
}
