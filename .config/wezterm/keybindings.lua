local wezterm = require("wezterm")
local projects = require("projects")

local act = wezterm.action
local M = {}
local ADJUST_PIXEL = 5
local function escape()
	return { key = "Escape", action = "PopKeyTable" }
end

local function move_pane(key, direction)
	return {
		key = key,
		mods = "ALT",
		action = act.ActivatePaneDirection(direction),
	}
end

local function adjust_pane(key, direction)
	return { key = key, mods = "SHIFT|ALT", action = act.AdjustPaneSize({ direction, ADJUST_PIXEL }) }
end

M.leader = {
	key = "Space",
	mods = "CTRL",
	timeout_miliseconds = 1000,
}

M.keys = {
	-- Spawn pane
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

	-- Move pane
	move_pane("LeftArrow", "Left"),
	move_pane("RightArrow", "Right"),
	move_pane("DownArrow", "Down"),
	move_pane("UpArrow", "Up"),

	-- Adjust pane
	adjust_pane("LeftArrow", "Left"),
	adjust_pane("RightArrow", "Right"),
	adjust_pane("UpArrow", "Up"),
	adjust_pane("DownArrow", "Down"),

	-- Close pane
	{
		key = "w",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentPane({
			confirm = false,
		}),
		desc = "Close current pane",
	},

	-- Projects
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

M.key_tables = {}

return M
