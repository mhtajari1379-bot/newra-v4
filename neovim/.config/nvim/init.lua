vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opt = vim.opt
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.laststatus = 3
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

require 'config.lazy'

-- vim: ts=2 sts=2 sw=2 et
