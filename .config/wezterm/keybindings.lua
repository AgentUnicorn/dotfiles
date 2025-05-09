local wezterm = require("wezterm")
local projects = require("projects")

local act = wezterm.action
local M = {}
local ADJUST_PIXEL = 5
local function escape()
	return { key = "Escape", action = "PopKeyTable" }
end

local function move_pane(key, direction)
	return { key = key, action = act.ActivatePaneDirection(direction) }
end

local function adjust_pane(key, direction)
	return { key = key, action = act.AdjustPaneSize({ direction, ADJUST_PIXEL }) }
end

M.leader = {
	key = "Space",
	mods = "CTRL",
	timeout_miliseconds = 1000,
}

M.keys = {
	{
		key = "r",
		mods = "LEADER",
		action = act.ActivateKeyTable({
			name = "resize_pane",
			one_shot = false,
		}),
	},
	{
		key = "a",
		mods = "LEADER",
		action = act.ActivateKeyTable({
			name = "activate_pane",
			one_shot = false,
		}),
	},
	{
		key = "+",
		mods = "ALT|SHIFT",
		action = wezterm.action.SplitHorizontal({
			domain = "CurrentPaneDomain",
		}),
		desc = "Split pane horizontal",
	},
	{
		key = "_",
		mods = "ALT|SHIFT",
		action = wezterm.action.SplitVertical({
			domain = "CurrentPaneDomain",
		}),
		desc = "Split pane vertical",
	},
	{
		key = "w",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentPane({
			confirm = false,
		}),
		desc = "Close current pane",
	},
	{
		key = "p",
		mods = "LEADER",
		action = projects.choose_project(),
	},
	{
		key = "f",
		mods = "LEADER",
		action = wezterm.action.ShowLauncherArgs({
			flags = "FUZZY|WORKSPACES",
		}),
	},
}

M.key_tables = {
	resize_pane = {
		adjust_pane("LeftArrow", "Left"),
		adjust_pane("h", "Left"),
		adjust_pane("RightArrow", "Right"),
		adjust_pane("l", "Right"),
		adjust_pane("UpArrow", "Up"),
		adjust_pane("k", "Up"),
		adjust_pane("DownArrow", "Down"),
		adjust_pane("j", "Down"),
		escape(),
	},
	activate_pane = {
		move_pane("LeftArrow", "Left"),
		move_pane("h", "Left"),
		move_pane("RightArrow", "Right"),
		move_pane("l", "Right"),
		move_pane("UpArrow", "Up"),
		move_pane("k", "Up"),
		move_pane("DownArrow", "Down"),
		move_pane("j", "Down"),
		escape(),
	},
}

return M
