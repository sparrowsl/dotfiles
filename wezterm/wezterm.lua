-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha"

config.enable_tab_bar = false

config.hide_tab_bar_if_only_one_tab = true

-- config.window_background_image = '/path/to/wallpaper.jpg'

config.window_background_opacity = 0.95

config.font = wezterm.font_with_fallback({
	"JetBrains Mono",
	"Roboto",
})

config.font_size = 10.0

config.automatically_reload_config = true

config.detect_password_input = true

config.enable_scroll_bar = false

config.window_decorations = "RESIZE"

config.window_close_confirmation = "NeverPrompt"

-- and finally, return the configuration to wezterm
return config
