if vim.fn.has('termguicolors') then
  vim.o.termguicolors = true
end
vim.g.sonokai_style = "andromeda"
vim.g.sonokai_better_performance = 1
vim.cmd [[colorscheme sonokai]]

local vim = vim
local opt = vim.opt
local g = vim.g

-- https://vi.stackexchange.com/a/5318/7339
vim.g.matchparen_timeout = 20
vim.g.matchparen_insert_timeout = 20

vim.g.markdown_fenced_languages = {
  "html",
  "javascript",
  "typescript",
  "css",
  "scss",
  "lua",
  "vim",
  "sh",
}

vim.o.sessionoptions = "buffers,curdir,folds,tabpages,winpos,winsize"

vim.diagnostic.config {
  float = { border = "rounded" }, -- add border to diagnostic popups
}

local options = {
  --keywordprg = ':help',
  equalalways = true,
  winbar = '%=%m %F',
  nrformats = { "alpha", "octal", "hex" },
  virtualedit = "block",
  modelines = 5,
  modelineexpr = false,
  modeline = true,
  cursorline = false,
  cursorcolumn = false,
  splitright = true,
  splitbelow = true,
  smartcase = true,
  hlsearch = true,
  ignorecase = true,
  incsearch = true,
  inccommand = "nosplit",
  hidden = true,
  autoindent = true,
  showmode = false,
  showmatch = true,
  matchtime = 2,
  wildmode = "longest:full,full",
  number = true,
  linebreak = true,
  joinspaces = false,
  -- timeoutlen = 500,
  ttimeoutlen = 10, -- https://vi.stackexchange.com/a/4471/7339
  path = vim.opt.path + "**",
  isfname = vim.opt.isfname:append("@-@"),
  autochdir = true,
  relativenumber = true,
  numberwidth = 2,
  shada = "!,'50,<50,s10,h,r/tmp",
  expandtab = true,
  smarttab = true,
  smartindent = true,
  shiftround = true,
  shiftwidth = 2,
  tabstop = 2,
  foldenable = false,
  foldlevel = 99,
  foldlevelstart = 99,
  foldcolumn = '1',
  foldmethod = "expr",
  foldexpr = "nvim_treesitter#foldexpr()",
  showtabline = 1,
  mouse = 'a',
  mousescroll = "ver:2,hor:6",
  scrolloff = 3,
  sidescrolloff = 3,
  wrap = true,
  list = true,
  -- listchars = { leadmultispace = "│ ", multispace = "│ ", tab = "│ ", },
  --lazyredraw = true,
  updatetime = 250,
  laststatus = 3,
  confirm = false,
  conceallevel = 3,
  cmdheight = 0,
  -- filetype = 'on', -- handled by filetypefiletype = 'on' --lugin
  completeopt = {'menu', 'menuone', 'noselect'}
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true
end

if vim.fn.executable("rg") then
  -- if ripgrep installed, use that as a grepper
  vim.opt.grepprg = "rg --vimgrep --no-heading --smart-case"
  vim.opt.grepformat = "%f:%l:%c:%m,%f:%l:%m"
end
--lua require("notify")("install ripgrep!")

if vim.fn.executable("prettier") then
  opt.formatprg = "prettier --stdin-filepath=%"
end
--lua require("notify")("Install prettier formater!")

opt.formatoptions = "l"
opt.formatoptions = opt.formatoptions
    - "a" -- Auto formatting is BAD.
    - "t" -- Don't auto format my code. I got linters for that.
    + "c" -- In general, I like it when comments respect textwidth
    - "o" -- O and o, don't continue comments
    + "r" -- But do continue when pressing enter.
    + "n" -- Indent past the formatlistpat, not underneath it.
    + "j" -- Auto-remove comments if possible.
    - "2" -- I'm not in gradeschool anymore

-- window-local options
window_options = {
  numberwidth = 2,
  number = true,
  relativenumber = true,
  linebreak = true,
  cursorline = false,
  foldenable = false,
}

for k, v in pairs(window_options) do
  vim.wo[k] = v
end
