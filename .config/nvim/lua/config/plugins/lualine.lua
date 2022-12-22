local M = {
    'nvim-lualine/lualine.nvim',
    event = 'VimEnter',

    dependencies = { 'nvim-tree/nvim-web-devicons', 'cbochs/grapple.nvim' },
}

function M.config()
    require('lualine').setup {
        options = {
            globalstatus = true,
        },
        sections = {
            lualine_b = {
                'branch',
                {
                    function()
                        local key = require('grapple').key()
                        return '  [' .. key .. ']'
                    end,
                    cond = require('grapple').exists,
                },
                'diff',
                'diagnostics',
            },
        },
    }
end

return M
