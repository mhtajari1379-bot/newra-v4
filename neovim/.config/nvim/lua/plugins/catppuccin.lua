return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
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
      },
    }
    vim.cmd.colorscheme 'catppuccin'
  end,
}
