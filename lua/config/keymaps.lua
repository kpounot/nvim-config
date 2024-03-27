local map = require('config.utils').map
local mapfile = " "

-- Set space as my leader key
map('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Removing arrows in normal mode
map('', '<Up>', '<Nop>')
map('', '<Down>', '<Nop>')
map('', '<Left>', '<Nop>')
map('', '<Right>', '<Nop>')

-- Splitting windows navigation and resizing
map('n', '<C-w><C-h>', '<C-h>')
map('n', '<C-w><C-j>', '<C-j>')
map('n', '<C-w><C-k>', '<C-k>')
map('n', '<C-w><C-l>', '<C-l>')
-- map('n', '<C-w>+', '<C-+>')
-- map('n', '<C-w>-', '<C-->')
-- map('n', '<C-w>>', '<C->>')
-- map('n', '<C-w><', '<C-<>')
-- map('n', '<C-w>=', '<C-=>')

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

map('n', '<leader>a', '<cmd>AerialToggle!<CR>')

local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, {})
map('n', '<leader>fg', builtin.live_grep, {})
map('n', '<leader>fb', builtin.buffers, {})
map('n', '<leader>fh', builtin.help_tags, {})
