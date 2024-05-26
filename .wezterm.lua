-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = 'Atelier Savanna (base16)'
config.font_size = 10
config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
config.window_background_opacity = 0.9

-- and finally, return the configuration to wezterm
return config
