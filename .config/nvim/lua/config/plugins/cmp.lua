local M = {
    'saghen/blink.cmp',
    version = '0.*',
    event = 'InsertEnter',
    dependencies = {
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        -- lock compat to tagged versions, if you've also locked blink.cmp to tagged versions
        { 'saghen/blink.compat', version = '*', opts = { impersonate_nvim_cmp = true } },
    },
}

M.opts = {
    keymap = { preset = 'super-tab' },
    completion = {
        list = { selection = 'auto_insert' },
        menu = { border = vim.g.border },
        documentation = { window = { border = vim.g.border } },
    },
    signature = { enabled = true, window = { border = vim.g.border } },
    snippets = {
        expand = function(snippet)
            require('luasnip').lsp_expand(snippet)
        end,
        active = function(filter)
            if filter and filter.direction then
                return require('luasnip').jumpable(filter.direction)
            end
            return require('luasnip').in_snippet()
        end,
        jump = function(direction)
            require('luasnip').jump(direction)
        end,
    },
    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer', 'luasnip' },
        providers = {
            luasnip = {
                name = 'luasnip',
                module = 'blink.compat.source',
                score_offset = -3,
                opts = {
                    use_show_condition = false,
                    show_autosnippets = true,
                },
            },
        },
    },
}

return M
