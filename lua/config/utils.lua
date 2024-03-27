local user_cmd = vim.api.nvim_create_user_command
local execute = vim.api.nvim_command
local vim = vim
local opt = vim.opt -- global
local g = vim.g     -- global for let options
local wo = vim.wo   -- window local
local bo = vim.bo   -- buffer local
local fn = vim.fn   -- access vim functions
local cmd = vim.cmd -- vim commands
local api = vim.api -- access vim api

function _G.reload(package)
  package.loaded[package] = nil
  return require(package)
end

local M = {}

M.map = function(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  -- vim.api.nvim_set_keymap(mode, lhs, rhs, options)
  vim.keymap.set(mode, lhs, rhs, options)
end

return M
