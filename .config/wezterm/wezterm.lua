local wezterm = require 'wezterm'
local config = wezterm.config_builder()

local keys = require 'keys'
local scheme = require 'scheme'

config.font = wezterm.font 'Iosevka Term'
config.font_size = 18.0
scheme.color_scheme = 'Everforest'
scheme.apply_to_config(config)

config.window_frame = {
    font = config.font
}
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

config.pane_focus_follows_mouse = true
config.scrollback_lines = 10000

config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.show_new_tab_button_in_tab_bar = false

config.window_close_confirmation = 'NeverPrompt'

require('bar').apply_to_config(config)
keys.apply_to_config(config)

return config
