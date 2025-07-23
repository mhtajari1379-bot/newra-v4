return {
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  dependencies = { 'mason-org/mason.nvim' },
  opts = {
    ensure_installed = {
      'stylua', -- Lua
      'shfmt', -- Bash
      'latexindent', -- LaTeX
      'prettier', -- Markdown, JS, HTML, CSS, TS
      'jq', -- JSON
    },
  },
}
