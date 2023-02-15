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
map('n', '<S-Up>', '<cmd>resize +2<cr>')
map('n', '<S-Down>', '<cmd>resize -2<cr>')
map('n', '<S-Left>', '<cmd>vertical resize -2<cr>')
map('n', '<S-Right>', '<cmd>vertical resize +2<cr>')

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
map('n', '<c-]>', '<cmd>Glance definitions<cr>', { silent = true })
map('n', '<c-k>', vim.lsp.buf.signature_help, { silent = true })

-- FTerm
map('n', '<A-i>', '<cmd>lua require("FTerm").toggle()<cr>')
map('t', '<A-i>', '<C-\\><C-n><cmd>lua require("FTerm").toggle()<cr>')

local non_leader = {
    g = {
        name = '+lsp',
        a = { vim.lsp.buf.code_action, 'Code Action' },
        d = { '<cmd>Glance definitions<cr>', 'Definition' },
        D = { '<cmd>Glance type_definitions<cr>', 'Type Definition' },
        i = { '<cmd>Glance implementations<cr>', 'Implementation' },
        r = { '<cmd>Glance references<cr>', 'References' },
        W = { telescope.lsp_workspace_symbols, 'Workspace Symbols' },
        ['0'] = { telescope.lsp_document_symbols, 'Document Symbols' },
        ['['] = { vim.diagnostic.goto_prev, 'Goto Previous Diagnostic' },
        [']'] = { vim.diagnostic.goto_next, 'Goto Next Diagnostic' },
    },
    K = { vim.lsp.buf.hover, 'Lsp Hover' },
}

local leader = {
    b = {
        name = '+buffer',
        ['p'] = { '<cmd>BufferLinePick<cr>', 'Pick Buffer' },
        ['s'] = { telescope.buffers, 'Select Buffer' },
        ['b'] = { '<cmd>:e #<cr>', 'Switch to Other Buffer' },
        ['['] = { '<cmd>:BufferLineCyclePrev<cr>', 'Previous Buffer' },
        [']'] = { '<cmd>:BufferLineCycleNext<cr>', 'Next Buffer' },
        ['D'] = { '<cmd>:bd<cr>', 'Delete Buffer & Window' },
    },
    c = { '<cmd>Telescope neoclip<cr>', 'Copy Registers' },
    d = {
        name = 'Debug',
        b = { "<cmd>lua require('dap').toggle_breakpoint()<cr>", 'Toggle Breakpoint' },
        C = { "<cmd>lua require('dap').clear_breakpoints()<cr>", 'Clear Breakpoints' },
        c = { "<cmd>lua require('dap').continue()<cr>", 'Continue' },
        v = { "<cmd>lua require('dap').step_over()<cr>", 'Step Over' },
        i = { "<cmd>lua require('dap').step_into()<cr>", 'Step Into' },
        o = { "<cmd>lua require('dap').step_out()<cr>", 'Step Out' },
        h = { "<cmd>lua require('dap.ui.widgets').hover()<cr>", 'Hover' },
        r = { "<cmd>lua require('dap').repl.open()<cr>", 'Repl' },
        u = { "<cmd>lua require('dapui').toggle()<cr>", 'Ui' },
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
    f = {
        name = '+file/format',
        mt = { '<cmd>Format<cr>', 'Format' },
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
        m = { telescope.man_pages, 'Man Pages' },
        k = { telescope.keymaps, 'Key Maps' },
        s = { telescope.highlights, 'Search Highlight Groups' },
        f = { telescope.filetypes, 'File Types' },
        o = { telescope.vim_options, 'Options' },
        a = { telescope.autocommands, 'Auto Commands' },
    },
    j = {
        name = '+hop',
        w = { '<cmd>HopWord<cr>', 'Hop to Word' },
        p = { '<cmd>HopPattern<cr>', 'Hop to Pattern' },
        l = { '<cmd>HopLine<cr>', 'Hop to Line' },
        j = { '<cmd>HopChar1<cr>', 'Hop to 1 Char' },
        ['2'] = { '<cmd>HopChar2<cr>', 'Hop to 2 Chars' },
    },
    l = {
        name = '+lsp',
        d = { '<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>', 'Buffer Diagnostics' },
        w = { '<cmd>Telescope diagnostics<cr>', 'Diagnostics' },
        i = { '<cmd>LspInfo<cr>', 'Info' },
        I = { '<cmd>Mason<cr>', 'Mason Info' },
    },
    ll = {
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
        p = { '<cmd>Lazy home<cr>', 'Home' },
        c = { '<cmd>Lazy check<cr>', 'Check' },
        i = { '<cmd>Lazy install<cr>', 'Install' },
        s = { '<cmd>Lazy sync<cr>', 'Sync' },
        S = { '<cmd>Lazy clear<cr>', 'Status' },
        x = { '<cmd>Lazy clean<cr>', 'Clean' },
        u = { '<cmd>Lazy update<cr>', 'Update' },
        l = { '<cmd>Lazy log<cr>', 'Log' },
        d = { '<cmd>Lazy debug<cr>', 'Debug' },
    },
    q = {
        name = '+quit/session',
        q = { '<cmd>qa<cr>', 'Quit' },
        ['!'] = { '<cmd>:qa!<cr>', 'Quit without saving' },
        l = { '<cmd>RestoreSession<cr>', 'Restore Session' },
        s = { '<cmd>SaveSession<cr>', 'Save Session' },
        t = { '<cmd>SearchSession<cr>', 'Select Session' },
    },
    rs = { require('root-switcher').toggle, 'Switch Root Mode' },
    rn = { vim.lsp.buf.rename, 'Rename' },
    rr = { '<cmd>RustRun<cr>', 'Rust Run' },
    s = {
        name = '+search',
        g = { telescope.live_grep, 'Grep' },
        b = { telescope.current_buffer_fuzzy_find, 'Buffer' },
        h = { telescope.command_history, 'Command History' },
        m = { telescope.marks, 'Jump to Mark' },
        s = { telescope.resume, 'Resume last search' },
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
    ['['] = { '<cmd>:BufferLineCyclePrev<cr>', 'Previous Buffer' },
    [']'] = { '<cmd>:BufferLineCycleNext<cr>', 'Next Buffer' },
    ['.'] = { telescope.file_browser, 'Browse Files' },
    [','] = { telescope.buffers, 'Switch Buffer' },
    ['/'] = { telescope.live_grep, 'Search' },
    [':'] = { telescope.command_history, 'Command History' },
}

wk.register(non_leader)
wk.register(leader, { prefix = '<leader>' })
