return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  opts = {
    flavour = 'auto',
    background = {
      light = 'latte',
      dark = 'mocha',
    },
    default_integrations = true,
    integrations = {
      snacks = {
        enabled = true,
        picker_style = 'nvchad',
      },
      noice = true,
      which_key = true,
      headlines = true,
      lsp_trouble = true,
    },
  },
  config = function()
    vim.cmd.colorscheme 'catppuccin'
  end,
}
