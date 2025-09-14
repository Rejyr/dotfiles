local M = {
    'saghen/blink.cmp',
    version = '1.*',
    event = 'InsertEnter',
    dependencies = {
        { 'L3MON4D3/LuaSnip', version = 'v2.*' },
    },
}

M.opts = {
    keymap = { preset = 'super-tab' },
    completion = {
        list = {
            selection = {
                preselect = function(_)
                    return not require('blink.cmp').snippet_active { direction = 1 }
                end,
            },
        },
        documentation = { auto_show = true },
        ghost_text = { enabled = true },
    },
    signature = { enabled = true },
    snippets = { preset = 'luasnip' },
    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
}

return M
