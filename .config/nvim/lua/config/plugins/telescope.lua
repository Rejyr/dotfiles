local M = {
    'nvim-telescope/telescope.nvim',

    dependencies = { 'nvim-lua/plenary.nvim' },
}

function M.config()
    local borderless = true
    require('telescope').setup {
        defaults = {
            layout_strategy = 'horizontal',
            prompt_prefix = ' ',
            selection_caret = ' ',
            winblend = borderless and 0 or 10,
        },
    }
end

return M
