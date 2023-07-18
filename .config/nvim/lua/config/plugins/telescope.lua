local M = {
    'nvim-telescope/telescope.nvim',

    dependencies = {
        'nvim-lua/plenary.nvim',
        'debugloop/telescope-undo.nvim',
        'nvim-telescope/telescope-file-browser.nvim',
    },
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
    require('telescope').load_extension 'undo'
    require('telescope').load_extension 'file_browser'
end

return M
