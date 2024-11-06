local wezterm = require("wezterm")
local act = wezterm.action
local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.enable_scroll_bar = true
config.enable_wayland = false
config.color_scheme = "Kanagawa Dragon (Gogh)"
config.font = wezterm.font_with_fallback({
	{ family = "JetBrains Mono", scale = 1.2 },
	{ family = "IosevkaTerm Nerd Font", scale = 1.2 },
	{ family = "MesloLGS NF", scale = 1.3 },
})
config.window_background_opacity = 0.9
-- config.default_prog = { "zellij" }
-- config.leader = { key = ";", mods = "CTRL", timeout_milliseconds = 2000 }
config.keys = {
	{
		key = "q",
		mods = "CMD",
		action = wezterm.action.CloseCurrentTab({ confirm = false }),
	},
	-- 	-- { key = ";", mods = "LEADER | CTRL", action = act.SendKey({ key = ";", mods = "CTRL" }) },
	-- 	{ key = "s", mods = "CTRL", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	-- 	{ key = "v", mods = "CTRL", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	-- 	{ key = "h", mods = "ALT", action = act.ActivatePaneDirection("Left") },
	-- 	{ key = "j", mods = "ALT", action = act.ActivatePaneDirection("Down") },
	-- 	{ key = "k", mods = "ALT", action = act.ActivatePaneDirection("Up") },
	-- 	{ key = "l", mods = "ALT", action = act.ActivatePaneDirection("Right") },
	-- 	{ key = "q", mods = "CTRL", action = act.CloseCurrentPane({ confirm = false }) },
	-- 	{ key = "t", mods = "CTRL", action = act.SpawnTab("CurrentPaneDomain") },
	-- 	{ key = "[", mods = "ALT", action = act.ActivateTabRelative(-1) },
	-- 	{ key = "]", mods = "ALT", action = act.ActivateTabRelative(1) },
}
-- Uncomment this if you are running in wsl
-- config.default_domain = "WSL:Ubuntu-24.04"
return config
