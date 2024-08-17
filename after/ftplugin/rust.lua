local bufnr = vim.api.nvim_get_current_buf()

vim.keymap.set(
  "n", 
  "<leader>ra", 
  function()
    vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
    -- or vim.lsp.buf.codeAction() if you don't want grouping.
  end,
  { silent = true, buffer = bufnr, desc = "Rust code actions" }
)

vim.keymap.set(
  "n", 
  "<leader>rr", 
  function()
    vim.cmd.RustLsp('runnables') -- supports rust-analyzer's grouping
    -- or vim.lsp.buf.codeAction() if you don't want grouping.
  end,
  { silent = true, buffer = bufnr, desc = "Rust runnables" }
)

local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set(
  "n", 
  "<leader>rt", 
  function()
    vim.cmd.RustLsp('testables') -- supports rust-analyzer's grouping
    -- or vim.lsp.buf.codeAction() if you don't want grouping.
  end,
  { silent = true, buffer = bufnr, desc = "Rust testables" }
)

local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set(
  "n", 
  "<leader>rd", 
  function()
    vim.cmd.RustLsp('debuggables') -- supports rust-analyzer's grouping
    -- or vim.lsp.buf.codeAction() if you don't want grouping.
  end,
  { silent = true, buffer = bufnr, desc = "Rust debuggables" }
)
