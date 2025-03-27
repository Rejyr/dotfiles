local miniclue = require 'mini.clue'

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
map('n', '<c-]>', '<cmd>lua vim.lsp.buf.definition()<cr>', { silent = true })
map('n', '<c-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', { silent = true })

-- disable command edit bind
map('n', 'q:', '')

local groups = {
    {
        keys = '',
        desc = '',
        mappings = {
            { 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', { desc = 'Lsp Hover' } },
            { '<leader>,', '<cmd>Telescope buffers<cr>', { desc = 'Switch Buffer' } },
            { '<leader>.', '<cmd>lua require("mini.files").open()<cr>', { desc = 'Browse Files' } },
            { '<leader>/', '<cmd>Telescope live_grep<cr>', { desc = 'Search' } },
            { '<leader>:', '<cmd>Telescope command_history<cr>', { desc = 'Command History' } },
            { '<leader>`', '<cmd>:e #<cr>', { desc = 'Switch to Other Buffer' } },
            { '<leader>c', '<cmd>Telescope neoclip<cr>', { desc = 'Copy Registers' } },
            { '<leader>u', '<cmd>Telescope undo<cr>', { desc = 'Telescope Undo Tree' } },
            {
                '<leader>L',
                "<cmd>lua require('config.plugins.lsp_lines').toggle()<cr>",
                { desc = 'Toggle lsp_lines' },
            },
            { '<leader>W', ':w<cr>', { desc = 'Write to Buffer' } },
            { '<leader>Q', ':wqa<cr>', { desc = 'Write to all Buffers and Quit' } },
        },
    },
    {
        keys = 'g',
        desc = '+lsp',
        mappings = {
            { 'g0', '<cmd>Telescope lsp_document_symbols<cr>', { desc = 'Document Symbols' } },
            { 'gD', '<cmd>lua vim.lsp.buf.type_definition()<cr>', { desc = 'Type Definition' } },
            { 'gW', '<cmd>Telescope lsp_workspace_symbols<cr>', { desc = 'Workspace Symbols' } },
            { 'gp', '<cmd>lua vim.diagnostic.goto_prev()<cr>', { desc = 'Goto Previous Diagnostic' } },
            { 'gn', '<cmd>lua vim.diagnostic.goto_next()<cr>', { desc = 'Goto Next Diagnostic' } },
            { 'ga', '<cmd>lua vim.lsp.buf.code_action()<cr>', { desc = 'Code Action' } },
            { 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', { desc = 'Definition' } },
            { 'gri', '<cmd>lua vim.lsp.buf.implementation()<cr>', { desc = 'Implementation' } },
            { 'grr', '<cmd>lua vim.lsp.buf.references()<cr>', { desc = 'References' } },
            { 'grn', '<cmd>lua vim.lsp.buf.rename()<cr>', { desc = 'Rename' } },
        },
    },
    {
        keys = '<leader>b',
        desc = '+buffer',
        mappings = {
            { '<leader>bD', '<cmd>:bd<cr>', { desc = 'Delete Buffer & Window' } },
            { '<leader>bb', '<cmd>Telescope buffers<cr>', { desc = 'Select Buffer' } },
            { '<leader>bs', '<cmd>:e #<cr>', { desc = 'Switch to Other Buffer' } },
        },
    },
    {
        keys = '<leader>C',
        desc = '+CSV',
        mappings = {
            {
                '<leader>Ca',
                ":lua require('decisive').align_csv({})<cr>",
                { desc = 'Align CSV', silent = true },
            },
            {
                '<leader>CA',
                ":lua require('decisive').align_csv_clear({})<cr>",
                { desc = 'Align CSV clear', silent = true },
            },
            {
                '[c',
                ":lua require('decisive').align_csv_prev_col()<cr>",
                { desc = 'Align CSV prev col', silent = true },
            },
            {
                ']c',
                ":lua require('decisive').align_csv_next_col()<cr>",
                { desc = 'Align CSV next col', silent = true },
            },
        },
    },
    {
        keys = '<leader>f',
        desc = '+file/format',
        mappings = {
            { '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Find File' } },
            { '<leader>fh', '<cmd>Telescope find_files hidden=true<cr>', { desc = 'Find Hidden File' } },
            { '<leader>fn', '<cmd>enew<cr>', { desc = 'New File' } },
        },
    },
    {
        keys = '<leader>fm',
        desc = '+format',
        mappings = {
            { '<leader>fmt', '<cmd>Format<cr>', { desc = 'Format' } },
            { '<leader>fml', '<cmd>lua vim.lsp.buf.format()<cr>', { desc = 'Format with LSP' } },
        },
    },
    {
        keys = '<leader>g',
        desc = '+git',
        mappings = {
            { '<leader>gb', '<cmd>Telescope git_branches<cr>', { desc = 'branches' } },
            { '<leader>gc', '<cmd>Telescope git_commits<cr>', { desc = 'commits' } },
            { '<leader>gs', '<cmd>Telescope git_status<cr>', { desc = 'status' } },
        },
    },
    {
        keys = '<leader>h',
        desc = '+help',
        mappings = {
            { '<leader>ha', '<cmd>Telescope autocommands<cr>', { desc = 'Auto Commands' } },
            { '<leader>hc', '<cmd>Telescope commands<cr>', { desc = 'Commands' } },
            { '<leader>hf', '<cmd>Telescope filetypes<cr>', { desc = 'File Types' } },
            { '<leader>hh', '<cmd>Telescope help_tags<cr>', { desc = 'Help Pages' } },
            { '<leader>hk', '<cmd>Telescope keymaps<cr>', { desc = 'Key Maps' } },
            { '<leader>hm', '<cmd>Telescope man_pages<cr>', { desc = 'Man Pages' } },
            { '<leader>ho', '<cmd>Telescope vim_options<cr>', { desc = 'Options' } },
            { '<leader>hs', '<cmd>Telescope highlights<cr>', { desc = 'Search Highlight Groups' } },
        },
    },
    {
        keys = '<leader>l',
        desc = '+lsp',
        mappings = {
            { '<leader>lI', '<cmd>Mason<cr>', { desc = 'Mason Info' } },
            { '<leader>ld', '<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>', { desc = 'Buffer Diagnostics' } },
            { '<leader>li', '<cmd>LspInfo<cr>', { desc = 'Info' } },
            { '<leader>lw', '<cmd>Telescope diagnostics<cr>', { desc = 'Diagnostics' } },
        },
    },
    {
        keys = '<leader>p',
        desc = '+plugin',
        mappings = {
            { '<leader>pS', '<cmd>Lazy clear<cr>', { desc = 'Status' } },
            { '<leader>pc', '<cmd>Lazy check<cr>', { desc = 'Check' } },
            { '<leader>pd', '<cmd>Lazy debug<cr>', { desc = 'Debug' } },
            { '<leader>pi', '<cmd>Lazy install<cr>', { desc = 'Install' } },
            { '<leader>pl', '<cmd>Lazy log<cr>', { desc = 'Log' } },
            { '<leader>pp', '<cmd>Lazy home<cr>', { desc = 'Home' } },
            { '<leader>ps', '<cmd>Lazy sync<cr>', { desc = 'Sync' } },
            { '<leader>pu', '<cmd>Lazy update<cr>', { desc = 'Update' } },
            { '<leader>px', '<cmd>Lazy clean<cr>', { desc = 'Clean' } },
        },
    },
    {
        keys = '<leader>q',
        desc = '+quit/session',
        mappings = {
            { '<leader>q!', '<cmd>:qa!<cr>', { desc = 'Quit without saving' } },
            { '<leader>qq', '<cmd>qa<cr>', { desc = 'Quit' } },
        },
    },
    {
        keys = '<leader>s',
        desc = '+search',
        mappings = {
            { '<leader>sb', '<cmd>Telescope current_buffer_fuzzy_find<cr>', { desc = 'Buffer' } },
            { '<leader>sg', '<cmd>Telescope live_grep<cr>', { desc = 'Grep' } },
            { '<leader>sh', '<cmd>Telescope command_history<cr>', { desc = 'Command History' } },
            { '<leader>sm', '<cmd>Telescope marks<cr>', { desc = 'Jump to Mark' } },
            { '<leader>so', '<cmd>SymbolsOutline<cr>', { desc = 'Symbols Outline' } },
            { '<leader>ss', '<cmd>Telescope resume<cr>', { desc = 'Resume last search' } },
        },
    },
    {
        keys = '<leader>w',
        desc = '+windows',
        mappings = {
            { '<leader>w-', '<C-W>s', { desc = 'split-window-below' } },
            { '<leader>w2', '<C-W>v', { desc = 'layout-double-columns' } },
            { '<leader>w=', '<C-W>=', { desc = 'balance-window' } },
            { '<leader>wH', '<C-W>5<', { desc = 'expand-window-left' } },
            { '<leader>wJ', ':resize +5', { desc = 'expand-window-below' } },
            { '<leader>wK', ':resize -5', { desc = 'expand-window-up' } },
            { '<leader>wL', '<C-W>5>', { desc = 'expand-window-right' } },
            { '<leader>wd', '<C-W>c', { desc = 'delete-window' } },
            { '<leader>wh', '<C-W>h', { desc = 'window-left' } },
            { '<leader>wj', '<C-W>j', { desc = 'window-below' } },
            { '<leader>wk', '<C-W>k', { desc = 'window-up' } },
            { '<leader>wl', '<C-W>l', { desc = 'window-right' } },
            { '<leader>ws', '<C-W>s', { desc = 'split-window-below' } },
            { '<leader>wv', '<C-W>v', { desc = 'split-window-right' } },
            { '<leader>ww', '<C-W>p', { desc = 'other-window' } },
            { '<leader>w|', '<C-W>v', { desc = 'split-window-right' } },
        },
    },
}

local function add_mappings(groups_table)
    local clue_groups = {}
    for _, group in pairs(groups_table) do
        if group['keys'] ~= '' then
            table.insert(clue_groups, { mode = 'n', keys = group['keys'], desc = group['desc'] })
        end
        for _, mapping in pairs(group['mappings']) do
            ---@diagnostic disable-next-line: deprecated
            map('n', unpack(mapping))
        end
    end
    return clue_groups
end

local clue_groups = add_mappings(groups)
miniclue.setup {
    window = {
        delay = 0,
    },
    triggers = {
        -- Leader triggers
        { mode = 'n', keys = '<Leader>' },
        { mode = 'x', keys = '<Leader>' },

        -- Built-in completion
        { mode = 'i', keys = '<C-x>' },

        -- `g` key
        { mode = 'n', keys = 'g' },
        { mode = 'x', keys = 'g' },

        -- Marks
        { mode = 'n', keys = "'" },
        { mode = 'n', keys = '`' },
        { mode = 'x', keys = "'" },
        { mode = 'x', keys = '`' },

        -- Registers
        { mode = 'n', keys = '"' },
        { mode = 'x', keys = '"' },
        { mode = 'i', keys = '<C-r>' },
        { mode = 'c', keys = '<C-r>' },

        -- Window commands
        { mode = 'n', keys = '<C-w>' },

        -- `z` key
        { mode = 'n', keys = 'z' },
        { mode = 'x', keys = 'z' },
    },
    clues = {
        miniclue.gen_clues.builtin_completion(),
        miniclue.gen_clues.g(),
        miniclue.gen_clues.marks(),
        miniclue.gen_clues.registers(),
        miniclue.gen_clues.windows(),
        miniclue.gen_clues.z(),
        clue_groups,
    },
}
