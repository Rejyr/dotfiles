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
    tabout,
    config_local,
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
        'chentoast/marks.nvim',
        event = 'VeryLazy',
        config = true,
    },
    {
        'ethanholz/nvim-lastplace',
        event = 'BufReadPre',
        config = true,
    },
}
