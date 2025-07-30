return {
  'lewis6991/gitsigns.nvim',
  opts = {
    vim.keymap.set('n', '<leader>gp', '<cmd>Gitsigns preview_hunk<CR>', {
      silent = true,
      noremap = true,
      desc = 'Git Preview',
    }),
    preview_config = {
      border = 'rounded',
    },
  },
}
