local lightbulb = {
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
}

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
}

local inlayhints = {
    'lvimuser/lsp-inlayhints.nvim',
    event = 'BufReadPre',
    config = function()
        require('lsp-inlayhints').setup()
        vim.api.nvim_create_augroup('LspAttach_inlayhints', {})
        vim.api.nvim_create_autocmd('LspAttach', {
            group = 'LspAttach_inlayhints',
            callback = function(args)
                if not (args.data and args.data.client_id) then
                    return
                end

                local bufnr = args.buf
                local client = vim.lsp.get_client_by_id(args.data.client_id)
                require('lsp-inlayhints').on_attach(client, bufnr)
            end,
        })
    end,
}

local indent_blankline = {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufReadPre',
    config = function()
        vim.opt.list = true
        vim.opt.listchars:append 'eol:↴'

        require('ibl').setup {
            scope = {
                enabled = true,
                highlight = 'Green',
            },
        }
    end,
}

local lualine = {
    'nvim-lualine/lualine.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons', 'Isrothy/lualine-diagnostic-message' },
    config = function()
        require('lualine').setup {
            options = {
                globalstatus = true,
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = {
                    'branch',
                    'diff',
                    'diagnostics',
                },
                lualine_c = { 'filename', 'diagnostic-message' },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' },
            },
        }
    end,
}

return {
    lightbulb,
    symbols_outline,
    inlayhints,
    indent_blankline,
    lualine,
    'folke/which-key.nvim',
    { 'DNLHC/glance.nvim', event = 'VeryLazy' },
    { 'ashfinal/qfview.nvim', event = 'VeryLazy', config = true },
    {
        'lewis6991/gitsigns.nvim',
        event = 'BufReadPre',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        config = true,
    },
    {
        'utilyre/barbecue.nvim',
        name = 'barbecue',
        version = '*',
        event = 'VeryLazy',
        dependencies = {
            'SmiteshP/nvim-navic',
            'nvim-tree/nvim-web-devicons',
        },
        config = true,
    },
    {
        'folke/trouble.nvim',
        event = 'BufReadPre',
        cmd = { 'TroubleToggle', 'Trouble' },
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
