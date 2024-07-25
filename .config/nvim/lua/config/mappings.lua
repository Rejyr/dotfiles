-- which-key setup
local wk = require 'which-key'

wk.setup {
    show_help = false,
    triggers = { { '<auto>', mode = 'nixsotc' } },
    plugins = { spelling = true },
    replace = { ['<leader>'] = 'SPC' },
}
vim.opt.timeoutlen = 500

-- keymap util
local map = vim.keymap.set

--
--
-- Mappings
--
--

-- remap F1 to Esc
map({ 'n', 'i' }, '<F1>', '<Esc>')

-- write on escape
map('n', '<Esc>', ':w<cr>')

-- set proper paste keybind
map(
    'i',
    '<C-r>',
    '<C-r><C-o>',
    { desc = 'Insert contents of named register. Inserts text literally, not as if you typed it.' }
)

-- Move to window using the <ctrl> movement keys
map('n', '<S-Left>', '<C-w>h')
map('n', '<S-Down>', '<C-w>j')
map('n', '<S-Up>', '<C-w>k')
map('n', '<s-Right>', '<C-w>l')

-- Resize window using <ctrl> arrow keys
map('n', '<C-Up>', '<cmd>resize +2<cr>')
map('n', '<C-Down>', '<cmd>resize -2<cr>')
map('n', '<C-Left>', '<cmd>vertical resize -2<cr>')
map('n', '<C-Right>', '<cmd>vertical resize +2<cr>')

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
map({ 'n', 'x', 'o' }, 'n', "'Nn'[v:searchforward]", { expr = true })
map({ 'n', 'x', 'o' }, 'N', "'nN'[v:searchforward]", { expr = true })

-- ZZ extensions
map('n', 'ZA', '<cmd>wqa<cr>')

-- save in insert mode
map({ 'n', 'i' }, '<C-s>', '<cmd>:w<cr><esc>')
map('n', '<C-c>', '<cmd>normal ciw<cr>a')

-- better indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- lsp
map('n', '<c-]>', '<cmd>Glance definitions<cr>', { silent = true })
map('n', '<c-k>', '<cmd>lua vim.lsp.buf.signature_help()', { silent = true })

local non_leader_keymaps = {
    { 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', desc = 'Lsp Hover' },
    { 'g', group = 'lsp' },
    { 'g0', '<cmd>Telescope lsp_document_symbols<cr>', desc = 'Document Symbols' },
    { 'gD', '<cmd>Glance type_definitions<cr>', desc = 'Type Definition' },
    { 'gW', '<cmd>Telescope lsp_workspace_symbols<cr>', desc = 'Workspace Symbols' },
    { 'gp', '<cmd>lua vim.diagnostic.goto_prev()<cr>', desc = 'Goto Previous Diagnostic' },
    { 'gn', '<cmd>lua vim.diagnostic.goto_next()<cr>', desc = 'Goto Next Diagnostic' },
    { 'ga', '<cmd>lua vim.lsp.buf.code_action()<cr>', desc = 'Code Action' },
    { 'gd', '<cmd>Glance definitions<cr>', desc = 'Definition' },
    { 'gi', '<cmd>Glance implementations<cr>', desc = 'Implementation' },
    { 'gr', '<cmd>Glance references<cr>', desc = 'References' },
}

local leader_keymaps = {
    { '<leader>,', '<cmd>Telescope buffers<cr>', desc = 'Switch Buffer' },
    { '<leader>.', '<cmd>Telescope file_browser<cr>', desc = 'Browse Files' },
    { '<leader>/', '<cmd>Telescope live_grep<cr>', desc = 'Search' },
    { '<leader>:', '<cmd>Telescope command_history<cr>', desc = 'Command History' },
    { '<leader>LL', "<cmd>lua require('config.plugins.lsp_lines').toggle()<cr>", desc = 'Toggle lsp_lines' },
    { '<leader>`', '<cmd>:e #<cr>', desc = 'Switch to Other Buffer' },
    { '<leader>b', group = 'buffer' },
    { '<leader>bD', '<cmd>:bd<cr>', desc = 'Delete Buffer & Window' },
    { '<leader>bb', '<cmd>Telescope buffers<cr>', desc = 'Select Buffer' },
    { '<leader>bs', '<cmd>:e #<cr>', desc = 'Switch to Other Buffer' },
    { '<leader>c', '<cmd>Telescope neoclip<cr>', desc = 'Copy Registers' },
    { '<leader>d', group = 'Debug' },
    { '<leader>dC', "<cmd>lua require('dap').clear_breakpoints()<cr>", desc = 'Clear Breakpoints' },
    { '<leader>dT', "<cmd>lua require('dap').terminate()<cr>", desc = 'Terminate' },
    { '<leader>db', "<cmd>lua require('dap').toggle_breakpoint()<cr>", desc = 'Toggle Breakpoint' },
    { '<leader>dc', "<cmd>lua require('dap').continue()<cr>", desc = 'Continue' },
    {
        '<leader>de',
        function()
            require('dap').clear_breakpoints()
            require('dapui').toggle {}
            require('dap').terminate()
            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-w>=', false, true, true), 'n', false)
        end,
        desc = 'End Debug Session',
    },
    { '<leader>dh', "<cmd>lua require('dap.ui.widgets').hover()<cr>", desc = 'Hover' },
    { '<leader>di', "<cmd>lua require('dap').step_into()<cr>", desc = 'Step Into' },
    { '<leader>do', "<cmd>lua require('dap').step_out()<cr>", desc = 'Step Out' },
    { '<leader>dr', "<cmd>lua require('dap').repl.open()<cr>", desc = 'Repl' },
    { '<leader>du', "<cmd>lua require('dapui').toggle()<cr>", desc = 'Ui' },
    { '<leader>dv', "<cmd>lua require('dap').step_over()<cr>", desc = 'Step Over' },
    { '<leader>f', group = 'file/format' },
    {
        '<leader>fB',
        '<cmd>Telescope file_browser path=%:p:help |select_buffer=true<cr>|',
        desc = 'Open Telescope File Browser',
    },
    { '<leader>fb', '<cmd>Telescope file_browser<cr>', desc = 'Open Telescope File Browser' },
    { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find File' },
    { '<leader>fh', '<cmd>Telescope find_files hidden=true<cr>', desc = 'Find Hidden File' },
    { '<leader>fmt', '<cmd>Format<cr>', desc = 'Format' },
    { '<leader>fn', '<cmd>enew<cr>', desc = 'New File' },
    { '<leader>fr', '<cmd>Telescope smart_open<cr>', desc = 'Open Recent File' },
    { '<leader>g', group = 'git' },
    { '<leader>gb', '<cmd>Telescope git_branches<cr>', desc = 'branches' },
    { '<leader>gc', '<cmd>Telescope git_commits<cr>', desc = 'commits' },
    { '<leader>gs', '<cmd>Telescope git_status<cr>', desc = 'status' },
    { '<leader>h', group = 'help' },
    { '<leader>ha', '<cmd>Telescope autocommands<cr>', desc = 'Auto Commands' },
    { '<leader>hc', '<cmd>Telescope commands<cr>', desc = 'Commands' },
    { '<leader>hf', '<cmd>Telescope filetypes<cr>', desc = 'File Types' },
    { '<leader>hh', '<cmd>Telescope help_tags<cr>', desc = 'Help Pages' },
    { '<leader>hk', '<cmd>Telescope keymaps<cr>', desc = 'Key Maps' },
    { '<leader>hm', '<cmd>Telescope man_pages<cr>', desc = 'Man Pages' },
    { '<leader>ho', '<cmd>Telescope vim_options<cr>', desc = 'Options' },
    { '<leader>hs', '<cmd>Telescope highlights<cr>', desc = 'Search Highlight Groups' },
    { '<leader>l', group = 'lsp' },
    { '<leader>lI', '<cmd>Mason<cr>', desc = 'Mason Info' },
    { '<leader>ld', '<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>', desc = 'Buffer Diagnostics' },
    { '<leader>li', '<cmd>LspInfo<cr>', desc = 'Info' },
    { '<leader>lw', '<cmd>Telescope diagnostics<cr>', desc = 'Diagnostics' },
    { '<leader>p', group = 'plugin manager' },
    { '<leader>pS', '<cmd>Lazy clear<cr>', desc = 'Status' },
    { '<leader>pc', '<cmd>Lazy check<cr>', desc = 'Check' },
    { '<leader>pd', '<cmd>Lazy debug<cr>', desc = 'Debug' },
    { '<leader>pi', '<cmd>Lazy install<cr>', desc = 'Install' },
    { '<leader>pl', '<cmd>Lazy log<cr>', desc = 'Log' },
    { '<leader>pp', '<cmd>Lazy home<cr>', desc = 'Home' },
    { '<leader>ps', '<cmd>Lazy sync<cr>', desc = 'Sync' },
    { '<leader>pu', '<cmd>Lazy update<cr>', desc = 'Update' },
    { '<leader>px', '<cmd>Lazy clean<cr>', desc = 'Clean' },
    { '<leader>q', group = 'quit/session' },
    { '<leader>q!', '<cmd>:qa!<cr>', desc = 'Quit without saving' },
    { '<leader>ql', '<cmd>Telescope possession list<cr>', desc = 'Load Session' },
    { '<leader>qq', '<cmd>qa<cr>', desc = 'Quit' },
    { '<leader>qs', '<cmd>SSave<cr>', desc = 'Save Session' },
    { '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', desc = 'Rename' },
    { '<leader>s', group = 'search' },
    { '<leader>sb', '<cmd>Telescope current_buffer_fuzzy_find<cr>', desc = 'Buffer' },
    { '<leader>sg', '<cmd>Telescope live_grep<cr>', desc = 'Grep' },
    { '<leader>sh', '<cmd>Telescope command_history<cr>', desc = 'Command History' },
    { '<leader>sm', '<cmd>Telescope marks<cr>', desc = 'Jump to Mark' },
    { '<leader>so', '<cmd>SymbolsOutline<cr>', desc = 'Symbols Outline' },
    { '<leader>ss', '<cmd>Telescope resume<cr>', desc = 'Resume last search' },
    { '<leader>u', '<cmd>Telescope undo<cr>', desc = 'Telescope Undo Tree' },
    { '<leader>w', group = 'windows' },
    { '<leader>w-', '<C-W>s', desc = 'split-window-below' },
    { '<leader>w2', '<C-W>v', desc = 'layout-double-columns' },
    { '<leader>w=', '<C-W>=', desc = 'balance-window' },
    { '<leader>wH', '<C-W>5<', desc = 'expand-window-left' },
    { '<leader>wJ', ':resize +5', desc = 'expand-window-below' },
    { '<leader>wK', ':resize -5', desc = 'expand-window-up' },
    { '<leader>wL', '<C-W>5>', desc = 'expand-window-right' },
    { '<leader>wd', '<C-W>c', desc = 'delete-window' },
    { '<leader>wh', '<C-W>h', desc = 'window-left' },
    { '<leader>wj', '<C-W>j', desc = 'window-below' },
    { '<leader>wk', '<C-W>k', desc = 'window-up' },
    { '<leader>wl', '<C-W>l', desc = 'window-right' },
    { '<leader>ws', '<C-W>s', desc = 'split-window-below' },
    { '<leader>wv', '<C-W>v', desc = 'split-window-right' },
    { '<leader>ww', '<C-W>p', desc = 'other-window' },
    { '<leader>w|', '<C-W>v', desc = 'split-window-right' },
    { '<leader>x', group = 'errors' },
    { '<leader>xT', '<cmd>TodoTelescope<cr>', desc = 'Todo Telescope' },
    { '<leader>xl', '<cmd>lopen<cr>', desc = 'Open Location List' },
    { '<leader>xq', '<cmd>TodoQuickFix<cr>', desc = 'Todo Quickfix' },
    { '<leader>xt', '<cmd>TodoTrouble<cr>', desc = 'Todo Trouble' },
    { '<leader>xtt', '<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>', desc = 'Todo Trouble' },
    { '<leader>xx', '<cmd>TroubleToggle workspace_diagnostics<cr>', desc = 'Trouble' },
}

wk.add(non_leader_keymaps)
wk.add(leader_keymaps)
