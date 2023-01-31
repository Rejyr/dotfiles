-- which-key setup
local wk = require 'which-key'

wk.setup {
    show_help = false,
    triggers = 'auto',
    plugins = { spelling = true },
    key_labels = { ['<leader>'] = 'SPC' },
}
vim.opt.timeoutlen = 500

-- keymap util
local map = vim.keymap.set

-- plugins
---@diagnostic disable-next-line: different-requires
local lazy = require 'lazy'
local telescope = require 'telescope.builtin'
local grapple = require 'grapple'
require('glance').setup()

--
--
-- Mappings
--
--

-- set proper paste keybind
map(
    'i',
    '<C-r>',
    '<C-r><C-o>',
    { desc = 'Insert contents of named register. Inserts text literally, not as if you typed it.' }
)

-- Move to window using the <ctrl> movement keys
map('n', '<left>', '<C-w>h')
map('n', '<down>', '<C-w>j')
map('n', '<up>', '<C-w>k')
map('n', '<right>', '<C-w>l')

-- Resize window using <ctrl> arrow keys
map('n', '<S-Up>', '<cmd>resize +2<CR>')
map('n', '<S-Down>', '<cmd>resize -2<CR>')
map('n', '<S-Left>', '<cmd>vertical resize -2<CR>')
map('n', '<S-Right>', '<cmd>vertical resize +2<CR>')

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
map({ 'n', 'x', 'o' }, 'n', "'Nn'[v:searchforward]", { expr = true })
map({ 'n', 'x', 'o' }, 'N', "'nN'[v:searchforward]", { expr = true })

-- save in insert mode
map({ 'n', 'i' }, '<C-s>', '<cmd>:w<cr><esc>')
map('n', '<C-c>', '<cmd>normal ciw<cr>a')

-- better indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- lsp
map('n', '<c-]>', '<CMD>Glance definitions<CR>', { silent = true })
map('n', '<c-k>', vim.lsp.buf.signature_help, { silent = true })

-- FTerm
map('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
map('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

local non_leader = {
    g = {
        name = '+lsp',
        a = { vim.lsp.buf.code_action, 'Code Action' },
        f = { '<CMD>Lspsaga lsp_finder<CR>', 'Definition and References' },
        d = { '<CMD>Glance definitions<CR>', 'Definition' },
        D = { '<CMD>Glance type_definitions<CR>', 'Type Definition' },
        i = { '<CMD>Glance implementations<CR>', 'Implementation' },
        r = { '<CMD>Glance references<CR>', 'References' },
        W = { telescope.lsp_workspace_symbols, 'Workspace Symbols' },
        ['0'] = { telescope.lsp_document_symbols, 'Document Symbols' },
        ['['] = { '<CMD>Lspsaga diagnostic_jump_prev<CR>', 'Goto Previous Diagnostic' },
        [']'] = { '<CMD>Lspsaga diagnostic_jump_next<CR>', 'Goto Next Diagnostic' },
    },
    K = { '<CMD>Lspsaga hover_doc<CR>', 'Lsp Hover' },
}

local leader = {
    b = {
        name = '+buffer',
        ['p'] = { '<cmd>BufferLinePick<CR>', 'Pick Buffer' },
        ['s'] = { telescope.buffers, 'Select Buffer' },
        ['b'] = { '<cmd>:e #<cr>', 'Switch to Other Buffer' },
        ['['] = { '<cmd>:BufferLineCyclePrev<CR>', 'Previous Buffer' },
        [']'] = { '<cmd>:BufferLineCycleNext<CR>', 'Next Buffer' },
        ['D'] = { '<cmd>:bd<CR>', 'Delete Buffer & Window' },
    },
    c = { '<cmd>Telescope neoclip<CR>', 'Copy Registers' },
    d = {
        name = 'Debug',
        b = { "<cmd>lua require('dap').toggle_breakpoint()<CR>", 'Toggle Breakpoint' },
        C = { "<CMD>lua require('dap').clear_breakpoints()<CR>", 'Clear Breakpoints' },
        c = { "<cmd>lua require('dap').continue()<CR>", 'Continue' },
        v = { "<cmd>lua require('dap').step_over()<CR>", 'Step Over' },
        i = { "<cmd>lua require('dap').step_into()<CR>", 'Step Into' },
        o = { "<cmd>lua require('dap').step_out()<CR>", 'Step Out' },
        h = { "<cmd>lua require('dap.ui.widgets').hover()<CR>", 'Hover' },
        r = { "<cmd>lua require('dap').repl.open()<CR>", 'Repl' },
        u = { "<cmd>lua require('dapui').toggle()<CR>", 'Ui'},
        e = {
            function()
                require('dap').clear_breakpoints()
                require('dapui').toggle {}
                require('dap').terminate()
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-w>=', false, true, true), 'n', false)
            end,
            'End Debug Session',
        },
    },
    e = {
        name = '+show diagnostics',
        c = { '<cmd>Lspsaga show_cursor_diagnostics<CR>', 'Show Cursor Diagnostics' },
        l = { '<cmd>Lspsaga show_line_diagnostics<CR>', 'Show Line Diagnostics' },
        b = { '<cmd>Lspsaga show_buf_diagnostics<CR>', 'Show Buffer Diagnostics' },
    },
    f = {
        name = '+file/format',
        mt = { '<cmd>Format<CR>', 'Format' },
        t = { '<cmd>NvimTreeToggle<cr>', 'NvimTree' },
        n = { '<cmd>enew<cr>', 'New File' },
        r = { require('telescope').extensions.smart_open.smart_open, 'Open Recent File' },
        f = { telescope.find_files, 'Find File' },
        h = { '<cmd>Telescope find_files hidden=true<cr>', 'Find Hidden File' },
    },
    g = {
        name = '+git',
        g = {
            function()
                require('FTerm').run [[gitui]]
            end,
            'Gitui',
        },
        c = { telescope.git_commits, 'commits' },
        b = { telescope.git_branches, 'branches' },
        s = { telescope.git_status, 'status' },
    },
    h = {
        name = '+help',
        c = { telescope.commands, 'Commands' },
        h = { telescope.help_tags, 'Help Pages' },
        m = { telescope.man_pagse, 'Man Pages' },
        k = { telescope.keymaps, 'Key Maps' },
        s = { telescope.highlights, 'Search Highlight Groups' },
        f = { telescope.filetypes, 'File Types' },
        o = { telescope.vim_options, 'Options' },
        a = { telescope.autocommands, 'Auto Commands' },
    },
    j = {
        name = '+hop',
        w = { '<cmd>HopWord<CR>', 'Hop to Word' },
        p = { '<cmd>HopPattern<CR>', 'Hop to Pattern' },
        l = { '<cmd>HopLine<cr>', 'Hop to Line' },
        j = { '<cmd>HopChar1<cr>', 'Hop to 1 Char' },
        ['2'] = { '<cmd>HopChar2<cr>', 'Hop to 2 Chars' },
    },
    l = {
        require('config.plugins.lsp_lines').toggle,
        'Toggle lsp_lines',
    },
    m = {
        name = '+grapple',
        m = { grapple.toggle, 'Grapple Mark' },
        p = { grapple.popup_tags, 'Grapple Popup' },
        ['1'] = {
            function()
                grapple.select { key = 1 }
            end,
            'Goto Grapple 1',
        },
        ['2'] = {
            function()
                grapple.select { key = 2 }
            end,
            'Goto Grapple 2',
        },
        ['3'] = {
            function()
                grapple.select { key = 3 }
            end,
            'Goto Grapple 2',
        },
        ['4'] = {
            function()
                grapple.select { key = 4 }
            end,
            'Goto Grapple 4',
        },
        ['5'] = {
            function()
                grapple.select { key = 5 }
            end,
            'Goto Grapple 5',
        },
    },
    p = {
        name = '+plugin manager',
        p = { lazy.home, 'Home' },
        s = { lazy.sync, 'Sync' },
        r = { lazy.check, 'Check' },
    },
    q = {
        name = '+quit/session',
        q = { '<cmd>qa<cr>', 'Quit' },
        ['!'] = { '<cmd>:qa!<cr>', 'Quit without saving' },
        l = { '<cmd>RestoreSession<CR>', 'Restore Session' },
        s = { '<cmd>SaveSession<CR>', 'Save Session' },
        t = { '<cmd>SearchSession<CR>', 'Select Session' },
    },
    rs = { require('root-switcher').toggle, 'Switch Root Mode' },
    rn = { require('renamer').rename, 'Rename' },
    rr = { '<cmd>RustRun<cr>', 'Rust Run' },
    s = {
        name = '+search/symbols',
        g = { telescope.live_grep, 'Grep' },
        b = { telescope.current_buffer_fuzzy_find, 'Buffer' },
        s = {
            function()
                require('telescope.builtin').lsp_document_symbols {
                    symbols = {
                        'Class',
                        'Function',
                        'Method',
                        'Constructor',
                        'Interface',
                        'Module',
                        'Struct',
                        'Trait',
                        'String',
                    },
                }
            end,
            'Goto Symbol',
        },
        h = { telescope.command_history, 'Command History' },
        m = { telescope.marks, 'Jump to Mark' },
    },
    so = { '<cmd>SymbolsOutline<cr>', 'Symbols Outline' },
    w = {
        name = '+windows',
        ['2'] = { '<C-W>v', 'layout-double-columns' },
        ['='] = { '<C-W>=', 'balance-window' },
        ['-'] = { '<C-W>s', 'split-window-below' },
        ['|'] = { '<C-W>v', 'split-window-right' },
        w = { '<C-W>p', 'other-window' },
        d = { '<C-W>c', 'delete-window' },
        h = { '<C-W>h', 'window-left' },
        j = { '<C-W>j', 'window-below' },
        l = { '<C-W>l', 'window-right' },
        k = { '<C-W>k', 'window-up' },
        H = { '<C-W>5<', 'expand-window-left' },
        J = { ':resize +5', 'expand-window-below' },
        L = { '<C-W>5>', 'expand-window-right' },
        K = { ':resize -5', 'expand-window-up' },
        s = { '<C-W>s', 'split-window-below' },
        v = { '<C-W>v', 'split-window-right' },
    },
    x = {
        name = '+errors',
        x = { '<cmd>TroubleToggle workspace_diagnostics<cr>', 'Trouble' },
        t = { '<cmd>TodoTrouble<cr>', 'Todo Trouble' },
        tt = { '<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>', 'Todo Trouble' },
        T = { '<cmd>TodoTelescope<cr>', 'Todo Telescope' },
        l = { '<cmd>lopen<cr>', 'Open Location List' },
        q = { '<cmd>TodoQuickFix<cr>', 'Todo Quickfix' },
    },
    ['`'] = { '<cmd>:e #<cr>', 'Switch to Other Buffer' },
    ['['] = { '<cmd>:BufferLineCyclePrev<CR>', 'Previous Buffer' },
    [']'] = { '<cmd>:BufferLineCycleNext<CR>', 'Next Buffer' },
    ['.'] = { telescope.file_browser, 'Browse Files' },
    [','] = { telescope.buffers, 'Switch Buffer' },
    ['/'] = { telescope.live_grep, 'Search' },
    [':'] = { telescope.command_history, 'Command History' },
}

wk.register(non_leader)
wk.register(leader, { prefix = '<leader>' })
