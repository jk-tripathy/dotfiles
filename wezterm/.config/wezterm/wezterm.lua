local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

-- Color Scheme
config.color_scheme = "Catppuccin Mocha"

-- Font Settings
config.font_size = 16
config.line_height = 1.2
config.font = wezterm.font("Iosevka Nerd Font")

-- Apperance
config.cursor_blink_rate = 0
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = false
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

wezterm.on("update-right-status", function(window, pane)
	window:set_left_status(string.format(" %s@%s: ", window:active_workspace(), pane:get_domain_name()))
end)

-- keybinds
config.keys = {
	-- domains
	{
		key = "a",
		mods = "CTRL|SHIFT",
		action = act.AttachDomain("dev"),
	},
	{
		key = "d",
		mods = "CTRL|SHIFT",
		action = act.DetachDomain({ DomainName = "dev" }),
	},
	-- launcher
	{
		key = " ",
		mods = "ALT",
		action = act.ShowLauncher,
	},
	{
		key = "q",
		mods = "CTRL|SHIFT",
		action = act.ShowLauncherArgs({
			flags = "FUZZY|WORKSPACES",
		}),
	},
	-- workspaces
	{
		key = "n",
		mods = "CTRL|SHIFT",
		action = act.PromptInputLine({
			description = wezterm.format({
				{ Attribute = { Intensity = "Bold" } },
				{ Foreground = { AnsiColor = "Fuchsia" } },
				{ Text = "Enter name for new workspace" },
			}),
			action = wezterm.action_callback(function(window, pane, line)
				if line then
					window:perform_action(
						act.SwitchToWorkspace({
							name = line,
							spawn = {
								domain = { DomainName = "dev" },
							},
						}),
						pane
					)
				end
			end),
		}),
	},
	-- close pane
	{
		key = "w",
		mods = "CTRL",
		action = act.CloseCurrentPane({ confirm = false }),
	},
	-- splits
	{
		key = "_",
		mods = "SHIFT|ALT",
		action = act.SplitVertical({
			domain = "CurrentPaneDomain",
		}),
	},
	{
		key = "+",
		mods = "SHIFT|ALT",
		action = act.SplitHorizontal({
			domain = "CurrentPaneDomain",
		}),
	},
	-- pane movement
	{
		key = "H",
		mods = "SHIFT|ALT",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "J",
		mods = "SHIFT|ALT",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key = "K",
		mods = "SHIFT|ALT",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "L",
		mods = "SHIFT|ALT",
		action = act.ActivatePaneDirection("Right"),
	},
	-- pane resize
	{
		key = ",",
		mods = "CTRL|ALT",
		action = act.AdjustPaneSize({ "Left", 5 }),
	},
	{
		key = ".",
		mods = "CTRL|ALT",
		action = act.AdjustPaneSize({ "Right", 5 }),
	},
	{
		key = "<",
		mods = "CTRL|SHIFT|ALT",
		action = act.AdjustPaneSize({ "Up", 5 }),
	},
	{
		key = ">",
		mods = "CTRL|SHIFT|ALT",
		action = act.AdjustPaneSize({ "Down", 5 }),
	},
	-- Rename current tab
	{
		key = "r",
		mods = "CTRL|SHIFT",
		action = wezterm.action.PromptInputLine({
			description = "Enter new name for tab",
			action = wezterm.action_callback(function(window, _, line)
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
}

-- tab nav
for i = 1, 8 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'CTRL',
    action = act.ActivateTab(i - 1),
  })
end

-- ssh domains
-- config.ssh_domains = {
-- 	{
-- 		name = "dd",
-- 		remote_address = "dev-dsk-jkt-1b-0109c800.eu-west-1.amazon.com",
-- 		username = "jkt",
-- 		multiplexing = "WezTerm",
-- 		remote_wezterm_path = "/home/jkt/wezterm/target/release/wezterm",
--         assume_shell = "Posix",
--         local_echo_threshold_ms = 500,
-- 	},
-- }

-- unix domains
config.unix_domains = {
  {
    name = "dev",
    proxy_command = { "ssh", "-X", "dev-dsk-jkt-1b-0109c800.eu-west-1.amazon.com", "/home/jkt/wezterm/target/release/wezterm", "cli", "--prefer-mux", "proxy" },
  },
}

-- WSL 2
-- config.default_domain = 'WSL:Ubuntu'

return config
