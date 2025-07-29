return {
  'preservim/vim-markdown',
  dependenciesw = { 'godlygeek/tabular' },
  config = function()
    vim.g.vim_markdown_folding_disabled = 1
  end,
}
