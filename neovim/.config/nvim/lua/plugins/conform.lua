return {
  'stevearc/conform.nvim',
  opts = {
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      bash = { 'shfmt' },
      latex = { 'latexindent' },
      markdown = { 'prettier' },
      javascript = { 'prettier' },
      html = { 'prettier' },
      css = { 'prettier' },
      typescript = { 'prettier' },
      json = { 'jq' },
    },
  },
}
