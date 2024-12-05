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
    keymap = {
        ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-e>'] = { 'hide' },
        ['<C-y>'] = { 'select_and_accept' },

        ['<C-p>'] = { 'select_prev', 'fallback' },
        ['<C-n>'] = { 'select_next', 'fallback' },

        ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
        ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

        ['<Tab>'] = { 'snippet_forward', 'fallback' },
        ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
    },
    windows = {
        autocomplete = {
            border = vim.g.border,
        },
        documentation = {
            border = vim.g.border,
        },
        signature_help = {
            border = vim.g.border,
        }
    },
    trigger = { signature_help = { enabled = true } },
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
        completion = {
            enabled_providers = { 'lsp', 'path', 'snippets', 'buffer', 'luasnip' },
        },
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
