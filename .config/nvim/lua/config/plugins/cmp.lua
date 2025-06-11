local M = {
    'saghen/blink.cmp',
    version = '1.*',
    event = 'InsertEnter',
    dependencies = {
        { 'L3MON4D3/LuaSnip', version = 'v2.*' },
    },
}

M.opts = {
    keymap = { preset = 'enter' },
    completion = {
        list = {
            selection = {
                preselect = false,
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
