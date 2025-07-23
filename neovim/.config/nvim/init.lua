-- ━━ Leaders ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- ━━ Alias for vim.opt ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
local opt = vim.opt

-- ━━ Display & Behavior ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
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

-- ━━ Indentation ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
opt.tabstop = 2 -- a Tab displays as 2 spaces
opt.shiftwidth = 2 -- → indentation size
opt.softtabstop = 2 -- editing behavior
opt.expandtab = true -- use spaces, not tabs

-- ━━ Lazy ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
require 'config.lazy'

-- vim: ts=2 sts=2 sw=2 et
