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
        menu = { border = vim.g.border },
        documentation = { window = { border = vim.g.border } },
    },
    signature = { enabled = true, window = { border = vim.g.border } },
    snippets = { preset = 'luasnip' },
    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer', },
    },
}

return M
