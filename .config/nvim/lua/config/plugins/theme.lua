local M = {
    'neanias/everforest-nvim',
    lazy = false,
}

function M.config()
    require('everforest').setup {
        background = 'medium',
    }
end

return M
