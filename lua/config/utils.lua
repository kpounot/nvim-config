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

local t = function(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true)
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

-- M.tab_complete = function()
-- 	if vim.fn.pumvisible() == 1 then
-- 		return t('<C-n>')
-- 	elseif vim.fn['vsnip#available'](1) == 1 then
--                 -- edit here --
-- 		return t('<Plug>(vsnip-expand-or-jump)')
-- 	else
-- 		return t('<Tab>')
-- 	end
-- end

-- M.s_tab_complete = function()
-- 	if vim.fn.pumvisible() == 1 then
-- 		return t('<C-p>')
-- 	elseif vim.fn['vsnip#jumpable'](-1) == 1 then
-- 		return t('<Plug>(vsnip-jump-prev)')
-- 	else
-- 		return t('<S-Tab>')
-- 	end
-- end

return M
