return {
  'smjonas/inc-rename.nvim',
  opts = {
    vim.keymap.set('n', '<leader>r', ':IncRename ', {
      silent = true,
      noremap = true,
      desc = 'Inc Rename',
    }),
  },
}
