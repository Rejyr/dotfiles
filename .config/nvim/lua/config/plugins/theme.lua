local M = {
    'neanias/everforest-nvim',
    lazy = false,
}

function M.config()
    require('everforest').setup {
        background = 'hard',
        transparent_background_level = 0,
    }
end

return M
