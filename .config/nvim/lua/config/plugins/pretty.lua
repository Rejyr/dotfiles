return {
    'folke/lsp-colors.nvim',
    'nvim-tree/nvim-web-devicons',
    { 'machakann/vim-highlightedyank', event = 'VeryLazy' },
    {
        'stevearc/dressing.nvim',
        event = 'VeryLazy',
        config = true,
    },
    {
        'Fildo7525/pretty_hover',
        event = 'VeryLazy',
        config = true,
    },
    {
        'NvChad/nvim-colorizer.lua',
        event = 'BufReadPre',
        opts = {
            user_default_options = {
                css = true,
                tailwind = true,
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
}
