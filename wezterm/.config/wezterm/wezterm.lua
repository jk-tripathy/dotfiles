local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action

-- Color Scheme
config.color_scheme = "Oxocarbon Dark"

-- Font Settings
config.font_size = 14
config.line_height = 1.2
config.font = wezterm.font("Iosevka Nerd Font")

-- Apperance
config.cursor_blink_rate = 0
config.window_decorations = 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
    left = 10,
    right = 10,
    top = 10,
    bottom = 10,
}
config.colors = {
    cursor_bg = "white",
    cursor_border = "white",
}
config.macos_window_background_blur = 40

-- keybinds
config.keys = {
    -- close pane
    {
        key = 'w',
        mods = 'CTRL',
        action = act.CloseCurrentPane { confirm = false },
    },
    -- splits
    {
        key = '_',
        mods = 'SHIFT|ALT',
        action = act.SplitVertical {
            domain = 'CurrentPaneDomain'
        },
    },
    {
        key = '+',
        mods = 'SHIFT|ALT',
        action = act.SplitHorizontal {
            domain = 'CurrentPaneDomain'
        },
    },
    -- pane movement
    {
        key = 'H',
        mods = 'SHIFT|ALT',
        action = act.ActivatePaneDirection 'Left',
    },
    {
        key = 'J',
        mods = 'SHIFT|ALT',
        action = act.ActivatePaneDirection 'Down',
    },
    {
        key = 'K',
        mods = 'SHIFT|ALT',
        action = act.ActivatePaneDirection 'Up',
    },
    {
        key = 'L',
        mods = 'SHIFT|ALT',
        action = act.ActivatePaneDirection 'Right',
    },
    -- pane resize
    {
        key = ',',
        mods = 'CTRL|ALT',
        action = act.AdjustPaneSize { 'Left', 5 },
    },
    {
        key = '.',
        mods = 'CTRL|ALT',
        action = act.AdjustPaneSize { 'Right', 5 },
    },
    {
        key = '<',
        mods = 'CTRL|SHIFT|ALT',
        action = act.AdjustPaneSize { 'Up', 5 },
    },
    {
        key = '>',
        mods = 'CTRL|SHIFT|ALT',
        action = act.AdjustPaneSize { 'Down', 5 },
    },
}

-- WSL 2
-- config.default_domain = 'WSL:Ubuntu'

return config
