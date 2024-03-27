return {
  -- Colorscheme 
  "sainnhe/sonokai",

  -- NeoTree
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
    },
    config = function()
      require("neo-tree").setup()
    end,
  },

  -- Lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('config.lualine')
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
    config = function()
      require("config.treesitter")
    end,
  },

  -- LSP
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require('config/mason-lspconfig')
    end,
  },
  {
    'simrat39/rust-tools.nvim',
    config = function()
      require("config.rust_tools")
    end,
  },
  { "folke/neodev.nvim", opts = {} },
  { 
    "rcarriga/nvim-dap-ui", 
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}
  },
  'mfussenegger/nvim-dap',
  "neovim/nvim-lspconfig",
  'mfussenegger/nvim-lint',

  -- Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
     dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Completion
 'hrsh7th/cmp-nvim-lsp',
 'hrsh7th/cmp-buffer',
 'hrsh7th/cmp-path',
 'hrsh7th/cmp-cmdline',
 'hrsh7th/cmp-vsnip',
 'hrsh7th/vim-vsnip',
 {
   'hrsh7th/nvim-cmp',
   config = function()
     require('config/cmp')
   end,
  },
}
