local wezterm = require("wezterm")
local keybindings = require("keybindings")
local colors = require("colors")
local status_line = require("statusline")

local config = wezterm.config_builder()
local colorscheme = colors.colorscheme

status_line.setup()

config = {
	prefer_egl = true,

	-- font = wezterm.font("JetBrainsMono"),
	font = wezterm.font("CaskaydiaCove Nerd Font", { weight = "DemiBold" }),
	font_size = 12.0,

	-- tab bar
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = false,
	use_fancy_tab_bar = false,

	warn_about_missing_glyphs = false,

	window_close_confirmation = "NeverPrompt",
	window_padding = {
		left = 2,
		right = 2,
		top = 5,
		bottom = 0,
	},
	term = "xterm-kitty",
	enable_kitty_graphics = true,
	max_fps = 144,
	window_decorations = "RESIZE",
	default_cursor_style = "SteadyBlock",
	cursor_blink_ease_out = "Constant",
	cursor_blink_ease_in = "Constant",
	cursor_blink_rate = 0,

	-- Powershell
	-- default_prog = { "C:\\Program Files\\PowerShell\\7\\pwsh.exe" },
	default_prog = { "C:\\Program Files\\Git\\bin\\bash.exe", "-i" },

	-- Terminal opacity
	window_background_opacity = 0.8,

	colors = colors.colors,

	-- Keymap
	disable_default_key_bindings = false,
	leader = keybindings.leader,
	keys = keybindings.keys,
	key_tables = keybindings.key_tables,
}

-- wezterm.on("update-right-status", function(window, pane)
-- 	local name = window:active_key_table()
-- 	if name then
-- 		local SOLID_LEFT_ARROW = utf8.char(0xe0b2)
--
-- 		local bg = colorscheme["linkarzu_color10"]
-- 		local fg = colorscheme["linkarzu_color14"]
--
-- 		window:set_right_status(wezterm.format({
-- 			{ Background = { Color = "None" } },
-- 			{ Foreground = { Color = bg } },
-- 			{ Text = SOLID_LEFT_ARROW },
-- 			{ Background = { Color = bg } },
-- 			{ Foreground = { Color = fg } },
-- 			{ Text = " TABLE: " .. name .. " " },
-- 		}))
-- 	else
-- 		-- Clear the right status when no key table is active
-- 		window:set_right_status("")
-- 	end
-- end)

return config
