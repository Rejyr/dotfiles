return {
    {
        'echasnovski/mini.bracketed',
        version = false,
        event = 'VeryLazy',
        config = true,
    },
    {
        'echasnovski/mini.comment',
        version = false,
        event = 'VeryLazy',
        config = function()
            require('mini.comment').setup {
                options = {
                    custom_commentstring = function()
                        if vim.bo.filetype == 'openscad' then
                            return '// %s'
                        else
                            return nil
                        end
                    end,
                },
            }
        end,
    },
    {
        'echasnovski/mini.cursorword',
        version = false,
        event = 'VeryLazy',
        config = true,
    },
    { 'echasnovski/mini.starter', version = false, event = 'VeryLazy' },
    {
        'echasnovski/mini.pairs',
        version = false,
        event = 'VeryLazy',
        config = true,
    },
    {
        'echasnovski/mini.surround',
        version = false,
        event = 'VeryLazy',
        config = true,
    },
}
