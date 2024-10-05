local wezterm = require("wezterm")

return {
	color_scheme = "Catppuccin Macchiato",
	enable_tab_bar = false,

	font_size = 16,
	font = wezterm.font("JetBrains Mono"),

	macos_window_background_blur = 30,
	window_background_opacity = 0.8,
	window_decorations = "RESIZE",

	default_prog = {
		"/opt/homebrew/bin/fish",
		"-l",
	},
}
