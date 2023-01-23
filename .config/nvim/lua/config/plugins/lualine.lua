local M = {
    'nvim-lualine/lualine.nvim',
    event = 'VimEnter',

    dependencies = { 'nvim-tree/nvim-web-devicons', 'cbochs/grapple.nvim', 'Isrothy/lualine-diagnostic-message' },
}

function M.config()
    require('lualine').setup {
        options = {
            globalstatus = true,
        },
        sections = {
            lualine_a = { 'mode' },
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
            lualine_c = { 'filename', 'diagnostic-message' },
            lualine_x = { 'encoding', 'fileformat', 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' },
        },
    }
end

return M
