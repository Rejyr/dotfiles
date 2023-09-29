local session = {
    'jedrzejboczar/possession.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    event = 'VeryLazy',
    config = function()
        require('possession').setup {
            commands = {
                save = 'SSave',
                load = 'SLoad',
                delete = 'SDelete',
                list = 'SList',
            },
        }
        require('telescope').load_extension('possession')
    end,
}

local neoscroll = {
    'karb94/neoscroll.nvim',
    keys = { '<C-u>', '<C-d>', 'gg', 'G' },
    config = function()
        require('neoscroll').setup()
        local t = {}
        -- Syntax: t[keys] = {function, {function arguments}}
        t['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '80' } }
        t['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', '80' } }
        t['<C-b>'] = { 'scroll', { '-vim.api.nvim_win_get_height(0)', 'true', '250' } }
        t['<C-f>'] = { 'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '250' } }
        t['<C-y>'] = { 'scroll', { '-0.10', 'false', '80' } }
        t['<C-e>'] = { 'scroll', { '0.10', 'false', '80' } }
        t['zt'] = { 'zt', { '150' } }
        t['zz'] = { 'zz', { '150' } }
        t['zb'] = { 'zb', { '150' } }

        require('neoscroll.config').set_mappings(t)
    end,
}

local tabout = {
    'abecodes/tabout.nvim',
    branch = 'master',
    event = 'InsertEnter',
    config = function()
        require('tabout').setup {
            tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
            backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
            act_as_tab = true, -- shift content if tab out is not possible
            act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
            enable_backwards = true, -- well ...
            completion = true, -- if the tabkey is used in a completion pum
            tabouts = {
                { open = "'", close = "'" },
                { open = '"', close = '"' },
                { open = '`', close = '`' },
                { open = '(', close = ')' },
                { open = '[', close = ']' },
                { open = '{', close = '}' },
            },
            ignore_beginning = false, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
            exclude = {}, -- tabout will ignore these filetypes
        }
    end,
}

local config_local = {
    'klen/nvim-config-local',
    event = 'BufReadPre',
    config = function()
        require('config-local').setup {
            -- Default configuration (optional)
            config_files = { '.vimrc.lua', '.vimrc' }, -- Config file patterns to load (lua supported)
            hashfile = vim.fn.stdpath 'data' .. '/config-local', -- Where the plugin keeps files data
            autocommands_create = true, -- Create autocommands (VimEnter, DirectoryChanged)
            commands_create = true, -- Create commands (ConfigSource, ConfigEdit, ConfigTrust, ConfigIgnore)
            silent = false, -- Disable plugin messages (Config loaded/ignored)
            lookup_parents = true, -- Lookup config files in parent directories
        }
    end,
}

return {
    session,
    neoscroll,
    tabout,
    config_local,
    { 'wakatime/vim-wakatime', event = 'VeryLazy' },
    {
        'McAuleyPenney/tidy.nvim',
        event = 'BufWritePre',
    },
    {
        'MaximilianLloyd/tw-values.nvim',
        cmd = { 'TWValues' },
        keys = {
            { '<leader>sv', '<cmd>TWValues<cr>', desc = 'Show tailwind CSS values' },
        },
        config = true,
    },
    {
        'notjedi/nvim-rooter.lua',
        lazy = false,
        opts = {
            manual = true,
        },
    },
    {
        'andymass/vim-matchup',
        event = 'BufReadPost',
        config = function()
            require('nvim-treesitter.configs').setup {
                matchup = {
                    enable = true, -- mandatory, false will disable the whole extension
                },
            }
        end,
    },
    {
        'lervag/vimtex',
        lazy = false,
        config = function()
            vim.g.tex_flavor = 'latex'
            vim.g.vimtex_view_method = 'zathura'
            vim.g.vimtex_quickfix_mode = 0
            vim.g.conceallevel = 1
            vim.g.tex_conceal = 'abdmg'
        end,
    },
    {
        'vim-pandoc/vim-pandoc-syntax',
        lazy = false,
    },
    { 'mechatroner/rainbow_csv', lazy = false },
    {
        'chentoast/marks.nvim',
        event = 'VeryLazy',
        config = true,
    },
    {
        'ethanholz/nvim-lastplace',
        event = 'BufReadPre',
        config = true,
    },
    {
        'danielfalk/smart-open.nvim',
        branch = '0.1.x',
        dependencies = { 'kkharji/sqlite.lua' },
        config = function()
            require('telescope').load_extension 'smart_open'
        end,
    },
}
