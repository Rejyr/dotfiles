local wezterm = require 'wezterm'

local M = {
    schemes = {},
}

M.schemes.Everforest = {
    foreground = '#d3c6aa',
    background = '#2d353b',
    cursor_bg = '#d3c6aa',
    cursor_border = '#d3c6aa',
    cursor_fg = '#2d353b',
    ansi = {
        '#343f44',
        '#e67e80',
        '#a7c080',
        '#dbbc7f',
        '#7fbbb3',
        '#d699b6',
        '#83c092',
        '#d3c6aa',
    },
    brights = {
        '#5c6a72',
        '#f85552',
        '#8da101',
        '#dfa000',
        '#3a94c5',
        '#df69ba',
        '#35a77c',
        '#dfddc8',
    },
}

M.color_scheme = 'Everforest'

function M.get_color_scheme()
    return M.schemes[M.color_scheme]
end

function M.apply_to_config(config)
    local scheme = M.get_color_scheme()

    config.color_scheme = M.color_scheme

    config.color_schemes = {}
    for key, value in pairs(M.schemes) do
        config.color_schemes[key] = value
    end

    config.colors = {
        tab_bar = {
            background = scheme.background,
            active_tab = {
                bg_color = scheme.background,
                fg_color = scheme.ansi[3],
            },
            inactive_tab = {
                bg_color = scheme.background,
                fg_color = scheme.foreground,
            },
            inactive_tab_hover = {
                bg_color = scheme.background,
                fg_color = scheme.foreground,
                italic = true,
            },
        },
    }

    config.command_palette_fg_color = scheme.foreground
    config.command_palette_bg_color = scheme.background
end

return M
