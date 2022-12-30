-- disable built in plugins
local disabled_built_ins = {
    'netrw',
    'netrwPlugin',
    'netrwSettings',
    'netrwFileHandlers',
    'gzip',
    'zip',
    'zipPlugin',
    'tar',
    'tarPlugin',
    'getscript',
    'getscriptPlugin',
    'vimball',
    'vimballPlugin',
    '2html_plugin',
    'logipat',
    'rrhelper',
    'spellfile_plugin',
    'matchit',
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g['loaded_' .. plugin] = 1
end

-- set shortmess
-- disable builtin intro 'I'
-- Avoid showing extra messages when using completion 'c'
vim.o.shortmess = 'filnxtToOFIc'

-- no command height
vim.o.cmdheight = 0

-- termgui colors
vim.opt.termguicolors = true

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

-- word wrap
vim.o.linebreak = true

-- map leader key to space
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- have a fixed column for the diagnostics to appear in
-- this removes the jitter when warnings/errors flow in
vim.wo.signcolumn = 'yes'
