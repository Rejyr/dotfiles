return {
    {
        'echasnovski/mini.bracketed',
        version = false,
        event = 'VeryLazy',
        config = function()
            require('mini.bracketed').setup()
        end,
    },
    {
        'echasnovski/mini.comment',
        version = false,
        event = 'VeryLazy',
        config = function()
            require('mini.comment').setup()
        end,
    },
    {
        'echasnovski/mini.cursorword',
        version = false,
        event = 'VeryLazy',
        config = function()
            require('mini.cursorword').setup()
        end,
    },
    { 'echasnovski/mini.starter', version = false, event = 'VeryLazy' },
    {
        'echasnovski/mini.pairs',
        version = false,
        event = 'VeryLazy',
        config = function()
            require('mini.pairs').setup()
        end,
    },
    {
        'echasnovski/mini.surround',
        version = false,
        event = 'VeryLazy',
        config = function()
            require('mini.surround').setup()
        end,
    },
}
