local wezterm = require 'wezterm'

local M = {}

M.domain_name = 'unix'

function M.apply_to_config(config)
    config.unix_domains = {
        {
            name = M.domain_name,
        },
    }
    config.default_gui_startup_args = { 'connect', M.domain_name }
end

return M
