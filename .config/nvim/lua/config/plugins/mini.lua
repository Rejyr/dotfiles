local M = {
    'echasnovski/mini.nvim',
    branch = 'stable',
    event = 'VeryLazy',
}

function M.config()
    -- surround
    require('mini.surround').setup()
    -- auto-pair
    require('mini.pairs').setup()
    -- underline words
    require('mini.cursorword').setup()
    -- comment
    require('mini.comment').setup()
    -- brackets
    -- require('mini.bracketed').setup()
end

return M
