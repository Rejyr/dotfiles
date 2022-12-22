local M = {
    'akinsho/bufferline.nvim',
    event = 'BufReadPre',

    dependencies = 'nvim-tree/nvim-web-devicons',
}

function M.config()
    require('bufferline').setup {
        options = {
            diagnostics = 'nvim_lsp',
            diagnostics_indicator = function(count, level, _, _)
                local icon = level:match 'error' and ' ' or ' '
                return ' ' .. icon .. count
            end,
            separator_style = 'thick',
        },
    }
end

return M
