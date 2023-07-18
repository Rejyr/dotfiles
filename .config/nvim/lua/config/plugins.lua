return {
    { 'wakatime/vim-wakatime', event = 'VeryLazy' },
    'folke/which-key.nvim',
    'folke/lsp-colors.nvim',
    'nvim-tree/nvim-web-devicons',
    { 'DNLHC/glance.nvim', event = 'VeryLazy' },
    { 'machakann/vim-highlightedyank', event = 'VeryLazy' },
    {
        'stevearc/dressing.nvim',
        event = 'VeryLazy',
        config = true,
    },
    {
        'norcalli/nvim-colorizer.lua',
        event = 'BufReadPre',
        config = true,
    },
    {
        'chentoast/marks.nvim',
        event = 'VeryLazy',
        config = true,
    },
    {
        'kosayoda/nvim-lightbulb',
        event = 'VeryLazy',
        config = function()
            vim.api.nvim_create_augroup('NvimLightbulb', {})
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
                group = 'NvimLightbulb',
                callback = function()
                    require('nvim-lightbulb').update_lightbulb()
                end,
            })
        end,
    },
    {
        'utilyre/barbecue.nvim',
        name = 'barbecue',
        version = '*',
        event = 'VeryLazy',
        dependencies = {
            'SmiteshP/nvim-navic',
            'nvim-tree/nvim-web-devicons', -- optional dependency
        },
        config = true,
    },
    {
        'SmiteshP/nvim-navbuddy',
        event = 'VeryLazy',
        dependencies = { 'neovim/nvim-lspconfig', 'SmiteshP/nvim-navic', 'MunifTanjim/nui.nvim' },
        opts = {
            window = {
                border = 'rounded',
                size = '50%',
            },
        },
    },
    {
        'Fildo7525/pretty_hover',
        event = 'VeryLazy',
        config = true,
    },
    {
        'j-hui/fidget.nvim',
        tag = 'legacy',
        event = 'LspAttach',
        opts = {
            window = {
                blend = 0,
            },
        },
    },
    {
        'folke/todo-comments.nvim',
        cmd = { 'TodoTrouble', 'TodoTelescope' },
        event = 'BufReadPost',
        dependencies = 'nvim-lua/plenary.nvim',
        config = true,
    },
    {
        'simrat39/symbols-outline.nvim',
        cmd = 'SymbolsOutline',
        config = function()
            require('symbols-outline').setup {
                symbols = {
                    File = { icon = '', hl = '@text.uri' },
                    Module = { icon = '󰆧', hl = '@namespace' },
                    Namespace = { icon = '', hl = '@namespace' },
                    Package = { icon = '󰏗', hl = '@namespace' },
                    Class = { icon = '', hl = '@type' },
                    Method = { icon = 'ƒ', hl = '@method' },
                    Property = { icon = '', hl = '@method' },
                    Field = { icon = '', hl = '@field' },
                    Constructor = { icon = '', hl = '@constructor' },
                    Enum = { icon = '', hl = '@type' },
                    Interface = { icon = '', hl = '@type' },
                    Function = { icon = '󰊕', hl = '@function' },
                    Variable = { icon = '', hl = '@constant' },
                    Constant = { icon = '', hl = '@constant' },
                    String = { icon = '𝓐', hl = '@string' },
                    Number = { icon = '#', hl = '@number' },
                    Boolean = { icon = '⊨', hl = '@boolean' },
                    Array = { icon = '󰅪', hl = '@constant' },
                    Object = { icon = '⦿', hl = '@type' },
                    Key = { icon = '', hl = '@type' },
                    Null = { icon = 'NULL', hl = '@type' },
                    EnumMember = { icon = '', hl = '@field' },
                    Struct = { icon = '', hl = '@type' },
                    Event = { icon = '', hl = '@type' },
                    Operator = { icon = '+', hl = '@operator' },
                    TypeParameter = { icon = '', hl = '@parameter' },
                    Component = { icon = '󰅴', hl = '@function' },
                    Fragment = { icon = '󰅴', hl = '@constant' },
                },
            }
            vim.g.symbols_outline = {
                width = 50,
            }
        end,
    },
    {
        'lewis6991/gitsigns.nvim',
        event = 'BufReadPre',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        config = true,
    },
    {
        'notjedi/nvim-rooter.lua',
        lazy = false,
        config = true,
    },
    {
        'McAuleyPenney/tidy.nvim',
        event = 'BufWritePre',
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
        'ethanholz/nvim-lastplace',
        event = 'BufReadPre',
        config = true,
    },
    {
        'AckslD/nvim-neoclip.lua',
        event = 'VeryLazy',
        dependencies = { 'nvim-telescope/telescope.nvim' },
        config = function()
            require('neoclip').setup()
            require('telescope').load_extension 'neoclip'
        end,
    },
    {
        'danielfalk/smart-open.nvim',
        branch = '0.1.x',
        dependencies = { 'kkharji/sqlite.lua' },
        config = function()
            require('telescope').load_extension 'smart_open'
        end,
    },
    {
        'folke/trouble.nvim',
        event = 'BufReadPre',
        cmd = { 'TroubleToggle', 'Trouble' },
        config = true,
    },
    'neovim/nvim-lspconfig',
    {
        'saecki/crates.nvim',
        event = { 'BufRead Cargo.toml' },
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = true,
    },
}
