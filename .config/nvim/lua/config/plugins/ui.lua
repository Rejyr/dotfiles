local symbols_outline = {
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
                String = { icon = '', hl = '@string' },
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
}

return {
    symbols_outline,
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
    {
        'AckslD/nvim-neoclip.lua',
        event = 'VeryLazy',
        dependencies = { 'nvim-telescope/telescope.nvim' },
        config = function()
            require('neoclip').setup()
            require('telescope').load_extension 'neoclip'
        end,
    },
}
