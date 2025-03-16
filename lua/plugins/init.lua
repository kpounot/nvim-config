return {
  -- Colorscheme 
  {
    "sainnhe/sonokai",
    config = function()
      if vim.fn.has('termguicolors') then
        vim.o.termguicolors = true
      end
      vim.g.sonokai_style = "andromeda"
      vim.g.sonokai_better_performance = 1
      vim.cmd [[colorscheme sonokai]]
    end,
  },

  "xiyaowong/transparent.nvim",

  {
    'Wansmer/treesj',
    keys = { '<leader>s', '<leader>j', '<leader>b'},
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('treesj').setup({--[[ your config ]]})
    end,
  },

    -- nvim-tree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
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
      codewindow.setup({ auto_enable = false, minimap_width = 10 })
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
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false,
  },
  { "folke/neodev.nvim", opts = {} },
  { 
    "rcarriga/nvim-dap-ui", 
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    config = function()
      require("dapui").setup()
    end,
  },
  'mfussenegger/nvim-dap',
  'mfussenegger/nvim-dap-python',
  'mfussenegger/nvim-lint',
  {
    "neovim/nvim-lspconfig",
    event = { "BufRead", "BufNewFile" },
  },
  {
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup()
    end
  },
  -- Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function() 
      require('telescope').load_extension("file_browser")
      require('telescope').load_extension("persisted")
    end,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
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
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
    },
    config = function()
      require("config.cmp")
    end,
  },
  { "rafamadriz/friendly-snippets" },

  -- Automatic insertion and deletion of a pair of characters
  { "Raimondi/delimitMate", event = "InsertEnter" },

  {
    'smoka7/hop.nvim',
    config = function()
      require('hop').setup()
    end,
  },

  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  "HiPhish/nvim-ts-rainbow2",

  {'akinsho/toggleterm.nvim', version = "*", config = true},

  -- Which-key
  {
    'folke/which-key.nvim',
    lazy = true,
  },

  -- nvim-comment
  {
    "terrortylor/nvim-comment",
    config = function()
      require("nvim_comment").setup({
        comment_empty = false,
      })
    end,
  },

  {
    "folke/trouble.nvim",
    opts = {},
    cmd="Trouble"
  },

  -- Sessions
  {
    "olimorris/persisted.nvim",
    lazy = false, -- make sure the plugin is always loaded at startup
    config = function()
      require("persisted").setup({
        autosave = false,
      })
    end,
  },

  'mg979/vim-visual-multi',
  {
      "kylechui/nvim-surround",
      version = "*", -- Use for stability; omit to use `main` branch for the latest features
      event = "VeryLazy",
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  },
}
