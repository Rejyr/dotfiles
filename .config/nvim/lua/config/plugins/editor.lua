return {
    {
    'klen/nvim-config-local',
    event = 'BufReadPre',
    config = function()
        require('config-local').setup {
            lookup_parents = true,
        }
    end,
},
    {
        'gbprod/yanky.nvim',
        event = 'BufReadPost',
        dependencies = { 'folke/snacks.nvim' },
        opts = {},
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
        init = function()
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
