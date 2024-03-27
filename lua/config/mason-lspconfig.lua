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
  },
  automatic_installation = false,
})

require("lspconfig").pylsp.setup {}
