local M = {
    'saghen/blink.cmp',
    version = '0.*',
    event = 'InsertEnter',
    dependencies = {
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        { 'saghen/blink.compat', version = '*', opts = { impersonate_nvim_cmp = true } },
    },
}

M.opts = {
    keymap = { preset = 'super-tab' },
    completion = {
        accept = {
            auto_brackets = {
                override_brackets_for_filetypes = {
                    tex = { '{', '}' },
                },
            },
        },
        list = { selection = {
            auto_insert = false,
        } },
    },
    signature = { enabled = true },
    snippets = { preset = 'luasnip' },
    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer', },
    },
}

return M
