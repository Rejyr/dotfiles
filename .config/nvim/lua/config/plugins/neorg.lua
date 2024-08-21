local M = {

    'nvim-neorg/neorg',
    lazy = false,
    version = '*',
}

function M.config()
    vim.wo.foldlevel = 99
    vim.wo.conceallevel = 2
    require('neorg').setup {
        load = {
            ['core.defaults'] = {},
            ['core.concealer'] = { config = { icon_preset = 'diamond' } },
            ['core.completion'] = { config = { engine = 'nvim-cmp' } },
            ['core.integrations.nvim-cmp'] = {},
            ['core.integrations.treesitter'] = {},
            ['core.dirman'] = {
                config = {
                    workspaces = {
                        notes = '~/notes',
                    },
                    default_workspace = 'notes',
                },
            },
        },
    }
end

return M
