local miniclue = require 'mini.clue'

-- keymap util
local map = vim.keymap.set

--
--
-- Mappings
--
--

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

-- disable command edit bind
map('n', 'q:', '')

-- move through quickfix list
map('n', '<C-j>', '<cmd>cnext<cr>')
map('n', '<C-k>', '<cmd>cprev<cr>')

-- mini.jump2d mappings
map({ 'n', 'x', 'o' }, '<CR>', '<cmd>lua MiniJump2d.start(MiniJump2d.builtin_opts.single_character)<CR>')

local groups = {
    {
        keys = '',
        desc = '',
        mappings = {
            { 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', { desc = 'Lsp Hover' } },
            { '<leader>,', '<cmd>lua Snacks.picker.buffers()<cr>', { desc = 'Switch Buffer' } },
            { '<leader>.', '<cmd>lua require("mini.files").open()<cr>', { desc = 'Browse Files' } },
            { '<leader>/', '<cmd>lua Snacks.picker.grep()<cr>', { desc = 'Search' } },
            { '<leader>:', '<cmd>lua Snacks.picker.command_history()<cr>', { desc = 'Command History' } },
            { '<leader>`', '<cmd>:e #<cr>', { desc = 'Switch to Other Buffer' } },
            { '<leader>u', '<cmd>lua Snacks.picker.undo()<cr>', { desc = 'Undo Tree' } },
            { '<leader>y', '<cmd>lua Snacks.picker.yanky()<cr>', { desc = 'Open Yank History' } },
            {
                '<leader>L',
                "<cmd>lua require('config.plugins.lsp_lines').toggle()<cr>",
                { desc = 'Toggle lsp_lines' },
            },
            { '<leader>Q', ':q<cr>', { desc = ':q' } },
            { '<leader>W', ':wq<cr>', { desc = ':wq' } },
        },
    },
    {
        keys = 'g',
        desc = '+lsp',
        mappings = {
            { 'g0', '<cmd>lua Snacks.picker.lsp_symbols()<cr>', { desc = 'Document Symbols' } },
            { 'gD', '<cmd>lua vim.lsp.buf.type_definition()<cr>', { desc = 'Type Definition' } },
            { 'gW', '<cmd>lua Snacks.picker.lsp_workspace_symbols()<cr>', { desc = 'Workspace Symbols' } },
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
            { '<leader>bb', '<cmd>lua Snacks.picker.buffers()<cr>', { desc = 'Select Buffer' } },
            { '<leader>bs', '<cmd>:e #<cr>', { desc = 'Switch to Other Buffer' } },
        },
    },
    {
        keys = '<leader>f',
        desc = '+file/format',
        mappings = {
            { '<leader>ff', '<cmd>lua Snacks.picker.files()<cr>', { desc = 'Find File' } },
            { '<leader>fh', '<cmd>lua Snacks.picker.files({hidden=true})<cr>', { desc = 'Find Hidden File' } },
            { '<leader>fn', '<cmd>enew<cr>', { desc = 'New File' } },
        },
    },
    {
        keys = '<leader>fm',
        desc = '+format',
        mappings = {
            { '<leader>fmt', '<cmd>lua require("conform").format()<cr>', { desc = 'Format' } },
            { '<leader>fml', '<cmd>lua vim.lsp.buf.format()<cr>', { desc = 'Format with LSP' } },
        },
    },
    {
        keys = '<leader>g',
        desc = '+git',
        mappings = {
            { '<leader>gb', '<cmd>lua Snacks.picker.git_branches()<cr>', { desc = 'branches' } },
            { '<leader>gc', '<cmd>lua Snacks.picker.git_log()<cr>', { desc = 'log' } },
            { '<leader>gs', '<cmd>lua Snacks.picker.git_status()<cr>', { desc = 'status' } },
            { '<leader>gg', '<cmd>Git<cr>', { desc = 'Fugitive' } },
            { '<leader>gp', '<cmd>Git push<cr>', { desc = 'Fugitive Git Push' } },
        },
    },
    {
        keys = '<leader>h',
        desc = '+help',
        mappings = {
            { '<leader>ha', '<cmd>lua Snacks.picker.autocmds()<cr>', { desc = 'Auto Commands' } },
            { '<leader>hc', '<cmd>lua Snacks.picker.commands()<cr>', { desc = 'Commands' } },
            { '<leader>hh', '<cmd>lua Snacks.picker.help()<cr>', { desc = 'Help Pages' } },
            { '<leader>hk', '<cmd>lua Snacks.picker.keymaps()<cr>', { desc = 'Key Maps' } },
            { '<leader>hm', '<cmd>lua Snacks.picker.man()<cr>', { desc = 'Man Pages' } },
            { '<leader>hs', '<cmd>lua Snacks.picker.highlights()<cr>', { desc = 'Search Highlight Groups' } },
        },
    },
    {
        keys = '<leader>l',
        desc = '+lsp',
        mappings = {
            { '<leader>lI', '<cmd>Mason<cr>', { desc = 'Mason Info' } },
            { '<leader>ld', '<cmd>lua Snacks.picker.diagnostics_buffer()<cr>', { desc = 'Buffer Diagnostics' } },
            { '<leader>li', '<cmd>LspInfo<cr>', { desc = 'Info' } },
            { '<leader>lw', '<cmd>lua Snacks.picker.diagnostics()<cr>', { desc = 'Diagnostics' } },
        },
    },
    {
        keys = '<leader>p',
        desc = '+plugin',
        mappings = {
            { '<leader>pu', '<cmd>DepsUpdate<cr>', { desc = 'Update' } },
            { '<leader>px', '<cmd>DepsClean<cr>', { desc = 'Clean' } },
        },
    },
    {
        keys = '<leader>q',
        desc = '+quit/session',
        mappings = {
            { '<leader>q!', '<cmd>:qa!<cr>', { desc = ':qa!' } },
            { '<leader>qq', '<cmd>qa<cr>', { desc = ':qa' } },
            { '<leader>qs', '<cmd>wqa<cr>', { desc = ':wqa' } },
        },
    },
    {
        keys = '<leader>s',
        desc = '+search',
        mappings = {
            { '<leader>sb', '<cmd>lua Snacks.picker.grep({buffers=true})<cr>', { desc = 'Buffer' } },
            { '<leader>sg', '<cmd>lua Snacks.picker.grep()<cr>', { desc = 'Grep' } },
            { '<leader>sh', '<cmd>lua Snacks.picker.command_history()<cr>', { desc = 'Command History' } },
            { '<leader>sm', '<cmd>lua Snacks.picker.marks()<cr>', { desc = 'Jump to Mark' } },
            { '<leader>ss', '<cmd>lua Snacks.picker.resume()<cr>', { desc = 'Resume last search' } },
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
    {
        keys = '<leader>x',
        desc = '+trouble',
        mappings = {
            { '<leader>xt', '<cmd>TodoTrouble<cr>', { desc = 'Todo (Trouble)' } },
            { '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', { desc = 'Diagnostics (Trouble)' } },
            {
                '<leader>xX',
                '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
                { desc = 'Buffer Diagnostics (Trouble)' },
            },
            {
                '<leader>xQ',
                '<cmd>Trouble qflist toggle<cr>',
                { desc = 'Quickfix List (Trouble)' },
            },
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
