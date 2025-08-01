return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = {
      'bash',
      'diff',
      'html',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'query',
      'css',
      'javascript',
      'typescript',
      'regex',
      'dockerfile',
      'json',
      'gitignore',
      'fish',
      'latex',
      'just',
    },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
}
