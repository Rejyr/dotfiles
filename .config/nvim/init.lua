--
-- Plugins
--
require 'plugins'

-- Save undo history
vim.o.undofile = true

-- Line Numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- 4-wide space tabs
vim.o.shiftwidth = 4
vim.o.softtabstop = 8
vim.o.tabstop = 8
vim.o.expandtab = true
vim.o.smarttab = true

-- map leader key to space
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- color setup
vim.cmd 'colorscheme nord'
vim.cmd 'set background=dark'
--
-- LSP/Rust setup
--
-- Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force user to select one from the menu
vim.o.completeopt = 'menuone,noinsert,noselect'

-- Avoid showing extra messages when using completion
vim.o.shortmess = 'c'

-- Configure LSP throu
-- have a fixed column for the diagnostics to appear in
-- this removes the jitter when warnings/errors flow in
vim.wo.signcolumn = 'yes'

-- Set updatetime for CursorHold
-- 300ms of no cursor movement to trigger CursorHold
vim.o.updatetime = 300
-- Show diagnostic popup on cursor hover
local diag_float_grp = vim.api.nvim_create_augroup("DiagnosticFloat", { clear = true })
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
   vim.diagnostic.open_float(nil, { focusable = false })
  end,
  group = diag_float_grp,
})
