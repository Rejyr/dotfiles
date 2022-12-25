return {
    { 'wakatime/vim-wakatime', event = 'VeryLazy' },
    'numToStr/FTerm.nvim',
    'folke/which-key.nvim',
    'DNLHC/glance.nvim',
    'folke/lsp-colors.nvim',
    'nvim-tree/nvim-web-devicons',
    'RRethy/nvim-base16',
    { 'machakann/vim-highlightedyank', event = 'VeryLazy' },
    { 'alec-gibson/nvim-tetris', cmd = 'Tetris' },
    { 'ThePrimeagen/vim-be-good', cmd = 'VimBeGood' },
    { 'seandewar/nvimesweeper', cmd = 'Nvimesweeper' },
    {
        'stevearc/dressing.nvim',
        event = 'VeryLazy',
        config = function()
            require('dressing').setup()
        end,
    },
    {
        'norcalli/nvim-colorizer.lua',
        event = 'BufReadPre',
        config = function()
            require('colorizer').setup()
        end,
    },
    {
        'chentoast/marks.nvim',
        event = 'VeryLazy',
        config = function()
            require('marks').setup()
        end,
    },
    {
        'folke/todo-comments.nvim',
        cmd = { 'TodoTrouble', 'TodoTelescope' },
        event = 'BufReadPost',
        dependencies = 'nvim-lua/plenary.nvim',
        config = function()
            require('todo-comments').setup()
        end,
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
            'NvimTreeToggle', 'NvimTreeClose', 'NvimTreeRefresh',
        },
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require('nvim-tree').setup()
        end,
    },
    {
        'lewis6991/gitsigns.nvim',
        event = 'BufReadPre',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        config = function()
            require('gitsigns').setup()
        end,
    },
    {
        'notjedi/nvim-rooter.lua',
        lazy = false,
        config = function()
            require('nvim-rooter').setup { manual = true }
        end,
    },
    {
        'Rejyr/root-switcher.nvim',
        -- '~/Programming/NeovimProjects/root-switcher.nvim',
        lazy = false,
        dependencies = { 'notjedi/nvim-rooter.lua' },
        config = function()
            require('root-switcher').setup {
                starting_mode = 'project',
                project_root = require('nvim-rooter').get_root,
            }
        end,
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
        'toppair/peek.nvim',
        cmd = { 'PeekOpen', 'PeekClose' },
        build = 'deno task --quiet build:fast',
        config = function()
            vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
            vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
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
        'ethanholz/nvim-lastplace',
        event = 'BufReadPre',
        config = function()
            require('nvim-lastplace').setup()
        end,
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
        'filipdutescu/renamer.nvim',
        branch = 'master',
        nequires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('renamer').setup {}
        end,
    },
    {
        'phaazon/hop.nvim',
        branch = 'v1', -- optional but strongly recommended
        event = 'VeryLazy',
        config = function()
            require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
        end,
    },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
        'kosayoda/nvim-lightbulb',
        event = 'BufReadPre',
        config = function()
            vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
        end,
    },
    {
        'folke/trouble.nvim',
        event = 'BufReadPre',
        cmd = { 'TroubleToggle', 'Trouble' },
        config = function()
            require('trouble').setup()
        end,
    },
    'neovim/nvim-lspconfig',
    {
        'saecki/crates.nvim',
        event = { 'BufRead Cargo.toml' },
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('crates').setup()
        end,
    },
}
