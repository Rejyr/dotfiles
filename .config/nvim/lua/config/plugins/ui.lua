return {
    { 'ashfinal/qfview.nvim', event = 'UIEnter', config = true },
    { 'brenoprata10/nvim-highlight-colors', event = 'VeryLazy', config=true },
    {
        'lewis6991/gitsigns.nvim',
        event = 'BufReadPre',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        config = true,
    },
    {
        'j-hui/fidget.nvim',
        tag = 'v1.6.1',
        event = 'VeryLazy',
        opts = {
            notification = {
                override_vim_notify = true,
                window = {
                    winblend = 50,
                }
            },
        },
    },
}
