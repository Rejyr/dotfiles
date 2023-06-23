local M = {
    'nvim-lualine/lualine.nvim',
    event = 'VimEnter',

    dependencies = { 'nvim-tree/nvim-web-devicons', 'Isrothy/lualine-diagnostic-message' },
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
