require("mason-lspconfig").setup({
  ensure_installed = {
    "clangd",
    "cssls",
    "jsonls",
    "tsserver",
    "ltex",
    "remark_ls",
    "pylsp",
    "rust_analyzer",
    "sourcery",
  },
  automatic_installation = false,
})

require("lspconfig").pylsp.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").sourcery.setup {}

