return {
    {
        'hedyhli/outline.nvim',
        cmd = { 'Outline', 'OutlineOpen' },
        opts = {},
    },
    { 'ashfinal/qfview.nvim', event = 'UIEnter', config = true },
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
        tag = 'legacy',
        event = 'LspAttach',
        opts = {
            window = {
                blend = 0,
            },
        },
    },
}
