require("mason-lspconfig").setup({
  ensure_installed = {
    "clangd",
    "cssls",
    "jsonls",
    "ltex",
    "remark_ls",
    "pyright",
  },
  automatic_installation = false,
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local servers = {
  pyright = {},
  tsserver = {},
  lua_ls = {
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    },
  },
}

require('mason-lspconfig').setup {
  handlers = {
    function(server_name)
      local server = servers[server_name] or {}
      server.capabilities = vim.tbl_deep_extend(
        'force', {}, capabilities, server.capabilities or {}
      )
      require('lspconfig')[server_name].setup(server)
    end,
  },
}
