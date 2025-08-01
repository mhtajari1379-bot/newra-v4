vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opt = vim.opt
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.mouse = 'a'
opt.showmode = false
opt.clipboard = 'unnamedplus'
opt.undofile = true
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = 'yes'
opt.splitright = true
opt.splitbelow = true
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
opt.inccommand = 'split'
opt.cursorline = true
opt.scrolloff = 10
opt.confirm = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
vim.opt.conceallevel = 2
vim.cmd [[filetype plugin indent on]]

local map = vim.keymap.set
local opts = { silent = true, noremap = true }
local modes = { 'n', 'i' }
local extend = vim.tbl_extend
map(modes, '<C-s>', '<cmd>w<cr>', extend('force', opts, { desc = 'Save Current Buffer' }))
map(modes, '<C-q>', '<cmd>wq<cr>', extend('force', opts, { desc = 'Save And Quit Buffer' }))
map('n', '<leader>bd', '<cmd>bd<cr>', extend('force', opts, { desc = 'Delete Current Buffer' }))
map('n', '<leader>wc', '<C-w>c', extend('force', opts, { desc = 'Close Current Window' }))
map('n', '<leader>|', '<cmd>vsplit<cr>', extend('force', opts, { desc = 'Vertical Split' }))
map('n', '<leader>_', '<cmd>split<cr>', extend('force', opts, { desc = 'Horizontal Split' }))

vim.cmd [[
  augroup RestoreCursor
    autocmd!
    autocmd BufReadPre * autocmd FileType <buffer> ++once
      \ let s:line = line("'\"")
      \ | if s:line >= 1 && s:line <= line("$") && &filetype !~# 'commit'
      \      && index(['xxd', 'gitrebase'], &filetype) == -1
      \ |   execute "normal! g`\""
      \ | endif
  augroup END
]]

require 'config.lazy'

vim.cmd.colorscheme 'catppuccin'

-- vim: ts=2 sts=2 sw=2 et
