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
map('n', '<C-h>', '<C-w><C-h>')
map('n', '<C-j>', '<C-w><C-j>')
map('', '<C-k>', '<Nop>')
map('n', '<C-k>', '<C-w><C-k>')
map('n', '<C-l>', '<C-w><C-l>')
map('n', '<C-Up>', '<C-w>+')
map('n', '<C-Down>', '<C-w>-')
map('n', '<C-Right>', '<C-w>>')
map('n', '<C-Left>', '<C-w><')

map('n', '<leader>a', '<cmd>AerialToggle!<CR>')

map('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>')
map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>')

-- LSP
map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>')
map('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>')
map('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>')
map('n', 'gw', ':lua vim.lsp.buf.document_symbol()<CR>')
map('n', 'gW', ':lua vim.lsp.buf.workspace_symbol()<CR>')
map('n', 'gr', ':lua vim.lsp.buf.references()<CR>')
map('n', 'K', ':lua vim.lsp.buf.hover()<CR>')
map('n', '<C-s>', ':lua vim.lsp.buf.signature_help()<CR>')
map('n', '<leader>af', ':lua vim.lsp.buf.code_action()<CR>')
map('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')

map('n', '<leader>df', vim.diagnostic.open_float, { silent = true })
map('n', '<leader>dn', vim.diagnostic.goto_next, { silent = true })
map('n', '<leader>dp', vim.diagnostic.goto_prev, { silent = true })

-- Hop
map('n', '<leader>h', '<cmd>HopPattern<CR>')

-- Terminal
map('n', '<F9>', '<cmd>ToggleTerm direction=float<CR>')

map('n', '<C-z>', '<cmd>CommentToggle<CR>')
map('v', '<C-z>', ":'<,'>CommentToggle<CR>")

map('n', '<leader>x','<cmd>TroubleToggle<CR>')
