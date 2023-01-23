local M = {
    'glepnir/lspsaga.nvim',
    branch = 'main',
    event = 'VeryLazy',
}

function M.config()
    local colors = require('everforest.colours').generate_palette({}, 'dark')

    require('lspsaga').setup {
        code_action_lightbulb = {
            enable = false,
        },
        ui = {
            theme = 'round',
            border = 'rounded',
            winblend = 0,
            colors = {
                --float window normal bakcground color
                normal_bg = colors.bg1,
                --title background color
                title_bg = colors.green,
                red = colors.red,
                magenta = colors.red,
                orange = colors.orange,
                yellow = colors.yellow,
                green = colors.green,
                cyan = colors.aqua,
                blue = colors.blue,
                purple = colors.purple,
                white = colors.fg,
                black = colors.bg0,
            },
        },
    }
end

return M
