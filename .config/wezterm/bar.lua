local wezterm = require 'wezterm'
local scheme = require('scheme').get_color_scheme()

local M = {}

local function update_status(window, _)
    local segments = {
        window:active_workspace(),
        wezterm.hostname(),
    }

    local fg = scheme.foreground

    local elements = {
        Foreground = { Color = fg },
        Background = { Color = 'none' },
    }
    for i, segment in ipairs(segments) do
        table.insert(elements, { Text = ' ' .. segment .. ' ' })
        if i ~= #segments then
            table.insert(elements, { Text = '|' })
        end
    end

    window:set_right_status(wezterm.format(elements))
end

function M.apply_to_config(config)
    wezterm.on('update-status', update_status)
end

return M
