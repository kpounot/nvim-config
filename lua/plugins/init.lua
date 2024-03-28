return {
  -- Colorscheme 
  "sainnhe/sonokai",

  "xiyaowong/transparent.nvim",

  -- NeoTree
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<Esc><C-s>", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
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

  -- Gitsigns
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },

  {
    'gorbit99/codewindow.nvim',
    config = function()
      local codewindow = require('codewindow')
      codewindow.setup({ auto_enable = true, minimap_width = 10 })
      codewindow.apply_default_keybinds()
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
  'mfussenegger/nvim-lint',
  {
    "neovim/nvim-lspconfig",
    event = { "BufRead", "BufNewFile" },
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
     dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Aerial code overview
  {
    'stevearc/aerial.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
  },

  -- Completion
  {
    "hrsh7th/nvim-cmp",
    event = 'InsertEnter',
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "onsails/lspkind-nvim",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-omni",
      "hrsh7th/cmp-emoji",
      "SirVer/ultisnips",
      "quangnguyen30192/cmp-nvim-ultisnips",
    },
    config = function()
      require("config.cmp")
    end,
  },

  -- Automatic insertion and deletion of a pair of characters
  { "Raimondi/delimitMate", event = "InsertEnter" },

  -- Comment plugin
  { "tpope/vim-commentary", event = "VeryLazy" },

  {
    'smoka7/hop.nvim',
    config = function()
      require('hop').setup()
    end,
  },
}
