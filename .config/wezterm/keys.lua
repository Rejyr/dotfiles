local wezterm = require 'wezterm'
local mux = wezterm.mux
local act = wezterm.action
local disabled_keys = require 'keys.disabled_keys'
local domains = require 'domains'

local M = {}

local leader = {
    key = 'a',
    mods = 'CTRL',
    timeout_milliseconds = 2000,
}

local rename_workspace = act.PromptInputLine {
    description = 'Enter new name for session',
    action = wezterm.action_callback(function(window, pane, line)
        if line then
            mux.rename_workspace(window:mux_window():get_workspace(), line)
        end
    end),
}

---@type {[string]: any}[]
-- key, action
local leader_keys = {
    { '0', act.ActivateTab(9) },
    { '1', act.ActivateTab(0) },
    { '2', act.ActivateTab(1) },
    { '3', act.ActivateTab(2) },
    { '4', act.ActivateTab(3) },
    { '5', act.ActivateTab(4) },
    { '6', act.ActivateTab(5) },
    { '7', act.ActivateTab(6) },
    { '8', act.ActivateTab(7) },
    { '9', act.ActivateTab(8) },
    { 'X', act.CloseCurrentTab { confirm = false } },
    { 'a', act.AttachDomain(domains.domain_name) },
    { 'c', act.ActivateCopyMode },
    { 'd', act.DetachDomain { DomainName = domains.domain_name } },
    { 'f', act.Search 'CurrentSelectionOrEmptyString' },
    { 'h', act.SplitVertical { domain = 'CurrentPaneDomain' } },
    { 'l', act.ShowDebugOverlay },
    { 'n', act.ActivateTabRelative(1) },
    { 'p', act.ActivateTabRelative(-1) },
    { 'r', rename_workspace },
    { 's', act.ShowLauncherArgs { flags = 'WORKSPACES' } },
    { 't', act.SpawnTab 'CurrentPaneDomain' },
    { 'v', act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { 'w', act.ShowTabNavigator },
    { 'x', act.CloseCurrentPane { confirm = false } },
    { 'DownArrow', act.ActivatePaneDirection 'Down' },
    { 'LeftArrow', act.ActivatePaneDirection 'Left' },
    { 'RightArrow', act.ActivatePaneDirection 'Right' },
    { 'UpArrow', act.ActivatePaneDirection 'Up' },
    { 'Space', act.QuickSelect },
    { 'Copy', act.CopyTo 'Clipboard' },
    { 'Paste', act.PasteFrom 'Clipboard' },
}

local keys = {
    { key = 'f', mods = 'ALT', action = act.TogglePaneZoomState },
    { key = 'v', mods = 'SHIFT|CTRL', action = act.PasteFrom 'Clipboard' },
    { key = 'V', mods = 'SHIFT|CTRL', action = act.PasteFrom 'Clipboard' },
    { key = '0', mods = 'CTRL', action = act.ResetFontSize },
    { key = '+', mods = 'CTRL', action = act.IncreaseFontSize },
    { key = '-', mods = 'CTRL', action = act.DecreaseFontSize },
    { key = 'LeftArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Left' },
    { key = 'LeftArrow', mods = 'SHIFT|ALT|CTRL', action = act.AdjustPaneSize { 'Left', 1 } },
    { key = 'RightArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Right' },
    { key = 'RightArrow', mods = 'SHIFT|ALT|CTRL', action = act.AdjustPaneSize { 'Right', 1 } },
    { key = 'UpArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Up' },
    { key = 'UpArrow', mods = 'SHIFT|ALT|CTRL', action = act.AdjustPaneSize { 'Up', 1 } },
    { key = 'DownArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Down' },
    { key = 'DownArrow', mods = 'SHIFT|ALT|CTRL', action = act.AdjustPaneSize { 'Down', 1 } },
}

local function create_disabled_keys(new_keys)
    local new_disabled_keys = {}
    for _, new_disabled_key in ipairs(new_keys) do
        table.insert(new_disabled_keys, {
            key = new_disabled_key.key,
            mods = new_disabled_key.mods,
            action = wezterm.action.DisableDefaultAssignment,
        })
    end
    return new_disabled_keys
end

local function create_leader_keys(new_keys)
    local new_leader_keys = {}
    for _, new_leader_key in ipairs(new_keys) do
        local key, action = table.unpack(new_leader_key)
        table.insert(new_leader_keys, { key = key, mods = 'LEADER', action = action })
    end
    return new_leader_keys
end

function M.add_keys(new_keys)
    for _, v in pairs(new_keys) do
        table.insert(keys, v)
    end
end

function M.apply_to_config(config)
    M.add_keys(create_disabled_keys(disabled_keys))
    M.add_keys(create_leader_keys(leader_keys))
    config.leader = leader
    config.keys = keys
end

return M
