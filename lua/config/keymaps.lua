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

map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc='Fuzzy find files' })
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { desc='Fuzzy grep' })
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { desc='Fuzzy find buffers' })
map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { desc='Help tags' })

-- LSP
map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>')
map('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>')
map('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>')
map('n', 'gw', ':lua vim.lsp.buf.document_symbol()<CR>')
map('n', 'gW', ':lua vim.lsp.buf.workspace_symbol()<CR>')
map('n', 'gr', ':lua vim.lsp.buf.references()<CR>')
map('n', 'K', ':lua vim.lsp.buf.hover()<CR>')
map('n', '<C-s>', ':lua vim.lsp.buf.signature_help()<CR>')
map('n', 'ca', ':lua vim.lsp.buf.code_action()<CR>')

-- map({ "i", "s" }, "<tab>", function()
--   if vim.fn["vsnip#jumpable"](1) == 1 then
--     return '<plug>(vsnip-jump-next)'
--   else
--     return '<tab>'
--   end
-- end, { expr = true, remap = false })

map('n', 'df', vim.diagnostic.open_float, { silent = true, desc='Diagnostic - float' })
map('n', 'dn', vim.diagnostic.goto_next, { silent = true , desc='Diagnostic - go to next' })
map('n', 'dp', vim.diagnostic.goto_prev, { silent = true, desc='Diagnostic - go to previous' })
map('n', '<leader>du', ":lua require('dapui').toggle()<CR>", { desc='Dap-UI toggle'})
map('n', '<leader>db', "<cmd> DapToggleBreakpoint<CR>", { desc='Dap- toggle breakpoint'})

-- Terminal
map('', '<F9>', '<cmd>ToggleTerm direction=float<CR>', { desc='Open/Close floating terminal' })
map('t', '<F9>', '<cmd>ToggleTerm direction=float<CR>')
map('t', '<esc>', [[<C-\><C-n>]])
map('t', '<C-h>', [[<Cmd>wincmd h<CR>]])
map('t', '<C-j>', [[<Cmd>wincmd j<CR>]])
map('t', '<C-k>', [[<Cmd>wincmd k<CR>]])
map('t', '<C-l>', [[<Cmd>wincmd l<CR>]])

map('n', '<C-z>', '<cmd>CommentToggle<CR>', { desc='Toggle comment' })
map('v', '<C-z>', ":'<,'>CommentToggle<CR>")

-- map('n', "<leader>xX", "<cmd>Trouble diagnostics toggle<cr>", { desc="Diagnostics (Trouble)" })
-- map('n', "<leader>xx", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc="Buffer Diagnostics (Trouble)" })
-- map('n', "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc="Symbols (Trouble)" })
-- map('n', "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", { desc="LSP Definitions / references / .}. (Trouble)" })
-- map('n', "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc="Location List (Trouble)" })
-- map('n', "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc="Quickfix List (Trouble)" })

map('n', '<leader>z','<cmd>HopCamelCase<CR>', { desc='Hop - Camel Case' })

map('n', '<leader>e','<cmd>NvimTreeToggle<CR>', { desc='Toggle directory tree' })
