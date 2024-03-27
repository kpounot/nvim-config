local set = vim.opt

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`

set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
set.autoindent = true
set.ruler = true
set.number = true
set.relativenumber = true

if vim.fn.has('termguicolors') then
  set.termguicolors = true
end
vim.g.sonokai_style = "andromeda"
vim.g.sonokai_better_performance = 1
vim.cmd [[colorscheme sonokai]]
