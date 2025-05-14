local wezterm = require("wezterm")
local module = {}

local function project_dirs()
	return {
		"D:\\ai-writer\\ai-writer-fe",
		"D:\\ai-writer\\ai-writer-be",
		"D:\\building-detection",
		"D:\\keywish",
	}
end

function module.choose_project()
	local choices = {}
	for _, value in ipairs(project_dirs()) do
		table.insert(choices, { label = value })
	end

	return wezterm.action.InputSelector({
		title = "Projects",
		choices = choices,
		fuzzy = true,
		action = wezterm.action_callback(function(child_window, child_pane, id, label)
			child_pane:send_text('cd "' .. label .. '"\n')
		end),
	})
end

return module
