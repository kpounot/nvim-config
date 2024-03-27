local map = require('config.utils').map
local mapfile = " "

-- Set space as my leader key
map('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map(
  'n',
  '<c-k>',
  function()
    local word = vim.fn.expand("<cword>")
    vim.cmd('help ' .. word)
  end,
  {
    desc = mapfile .. 'help for current word',
  }
)

local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, {})
