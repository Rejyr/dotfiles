local M = {
    'nvim-telescope/telescope.nvim',

    dependencies = {
        'nvim-lua/plenary.nvim',
        'debugloop/telescope-undo.nvim',
    },
}

function M.config()
    require('telescope').setup {
        defaults = {
            layout_strategy = 'horizontal',
            prompt_prefix = ' ',
            selection_caret = ' ',
            borderchars = { ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
        },
    }
    vim.api.nvim_set_hl(0, 'TelescopeNormal', { link = 'NormalFloat' })
    vim.api.nvim_set_hl(0, 'TelescopeBorder', { link = 'FloatBorder' })
    require('telescope').load_extension 'undo'
end

return M
