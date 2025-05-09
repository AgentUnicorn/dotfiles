local neovim_config_path = os.getenv("USERPROFILE") .. "\\AppData\\Local\\nvim"
local colors = dofile(neovim_config_path .. "\\lua\\config\\colors.lua")
local M = {}

M.colorscheme = colors

M.colors = {
	-- The default text color
	foreground = colors["linkarzu_color14"],
	-- The default background color
	background = colors["linkarzu_color10"],

	-- Overrides the cell background color when the current cell is occupied by the cursor
	cursor_bg = colors["linkarzu_color24"],
	-- Overrides the text color when the current cell is occupied by the cursor
	cursor_fg = colors["linkarzu_color10"],
	-- Specifies the border color of the cursor when the cursor style is set to Block
	cursor_border = colors["linkarzu_color02"],

	-- The foreground color of selected text
	selection_fg = colors["linkarzu_color14"],
	-- The background color of selected text
	selection_bg = colors["linkarzu_color16"],

	-- The color of the scrollbar "thumb"; the portion that represents the current viewport
	scrollbar_thumb = colors["linkarzu_color10"],

	-- The color of the split lines between panes
	split = colors["linkarzu_color02"],

	-- ANSI color palette
	ansi = {
		colors["linkarzu_color10"], -- black
		colors["linkarzu_color11"], -- red
		colors["linkarzu_color02"], -- green
		colors["linkarzu_color05"], -- yellow
		colors["linkarzu_color04"], -- blue
		colors["linkarzu_color01"], -- magenta
		colors["linkarzu_color03"], -- cyan
		colors["linkarzu_color14"], -- white
	},

	-- Bright ANSI color palette
	brights = {
		colors["linkarzu_color08"], -- bright black
		colors["linkarzu_color11"], -- bright red
		colors["linkarzu_color02"], -- bright green
		colors["linkarzu_color05"], -- bright yellow
		colors["linkarzu_color04"], -- bright blue
		colors["linkarzu_color01"], -- bright magenta
		colors["linkarzu_color03"], -- bright cyan
		colors["linkarzu_color14"], -- bright white
	},

	-- Tab bar
	tab_bar = {
		background = "None",
		active_tab = {
			fg_color = colors["linkarzu_color04"],
			bg_color = colors["linkarzu_color14"],
		},
		inactive_tab = {
			fg_color = colors["linkarzu_color09"],
			bg_color = colors["linkarzu_color25"],
		},
	},
}

return M
