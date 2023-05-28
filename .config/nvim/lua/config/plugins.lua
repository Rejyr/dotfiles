return {
    { 'wakatime/vim-wakatime', event = 'VeryLazy' },
    'numToStr/FTerm.nvim',
    'folke/which-key.nvim',
    'folke/lsp-colors.nvim',
    'nvim-tree/nvim-web-devicons',
    'RRethy/nvim-base16',
    { 'DNLHC/glance.nvim', event = 'VeryLazy' },
    { 'machakann/vim-highlightedyank', event = 'VeryLazy' },
    { 'alec-gibson/nvim-tetris', cmd = 'Tetris' },
    { 'ThePrimeagen/vim-be-good', cmd = 'VimBeGood' },
    { 'seandewar/nvimesweeper', cmd = 'Nvimesweeper' },
    { 'alanfortlink/blackjack.nvim', cmd = 'BlackJackNewGame', opts = { card_style = 'large' } },
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
            require('symbols-outline').setup()
            vim.g.symbols_outline = {
                width = 50,
            }
        end,
    },
    {
        'nvim-tree/nvim-tree.lua',
        cmd = {
            'NvimTreeToggle',
            'NvimTreeClose',
            'NvimTreeRefresh',
        },
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = true,
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
        'cbochs/grapple.nvim',
        event = 'BufReadPre',
        config = function()
            local grapple = require 'grapple'
            grapple.setup {
                setup = require('grapple.scope').fallback {
                    grapple.resolvers.lsp_fallback,
                    grapple.resolvers.git_fallback,
                    grapple.resolvers.static,
                },
            }
        end,
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
        'phaazon/hop.nvim',
        branch = 'v1', -- optional but strongly recommended
        event = 'VeryLazy',
        opt = {
            keys = 'etovxqpdygfblzhckisuran',
        },
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
