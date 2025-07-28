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

local map = vim.keymap.set
map('n', '<leader>s', '<Esc>:w<CR>', { silent = true, noremap = true, desc = 'Save Current Buffer' })
map('n', '<leader>q', '<Esc>:wq<CR>', { silent = true, noremap = true, desc = 'Save And Quit Buffer' })

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

-- vim: ts=2 sts=2 sw=2 et
