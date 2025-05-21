local neovim_config_path = os.getenv("USERPROFILE") .. "\\AppData\\Local\\nvim"
local colors = dofile(neovim_config_path .. "\\lua\\config\\colors.lua")
local M = {}

M.colorscheme = colors

M.colors = {
	-- The default text color
	foreground = colors["shirodev_color14"],
	-- The default background color
	background = colors["shirodev_color10"],

	-- Overrides the cell background color when the current cell is occupied by the cursor
	cursor_bg = colors["shirodev_color24"],
	-- Overrides the text color when the current cell is occupied by the cursor
	cursor_fg = colors["shirodev_color10"],
	-- Specifies the border color of the cursor when the cursor style is set to Block
	cursor_border = colors["shirodev_color02"],

	-- The foreground color of selected text
	selection_fg = colors["shirodev_color14"],
	-- The background color of selected text
	selection_bg = colors["shirodev_color16"],

	-- The color of the scrollbar "thumb"; the portion that represents the current viewport
	scrollbar_thumb = colors["shirodev_color10"],

	-- The color of the split lines between panes
	split = colors["shirodev_color02"],

	-- ANSI color palette
	ansi = {
		colors["shirodev_color10"], -- black
		colors["shirodev_color11"], -- red
		colors["shirodev_color02"], -- green
		colors["shirodev_color05"], -- yellow
		colors["shirodev_color04"], -- blue
		colors["shirodev_color01"], -- magenta
		colors["shirodev_color03"], -- cyan
		colors["shirodev_color14"], -- white
	},

	-- Bright ANSI color palette
	brights = {
		colors["shirodev_color08"], -- bright black
		colors["shirodev_color11"], -- bright red
		colors["shirodev_color02"], -- bright green
		colors["shirodev_color05"], -- bright yellow
		colors["shirodev_color04"], -- bright blue
		colors["shirodev_color01"], -- bright magenta
		colors["shirodev_color03"], -- bright cyan
		colors["shirodev_color14"], -- bright white
	},

	-- Tab bar
	-- tab_bar = {
	-- 	background = "None", -- Make tabline background transparent
	-- 	active_tab = {
	-- 		fg_color = colors["shirodev_color14"],
	-- 		bg_color = colors["shirodev_color03"],
	-- 	},
	-- 	inactive_tab = {
	-- 		fg_color = colors["shirodev_color14"],
	-- 		bg_color = colors["shirodev_color15"],
	-- 	},
	-- },
}

return M
