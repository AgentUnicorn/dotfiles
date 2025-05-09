local wezterm = require("wezterm")
local colors = require("colors")
local colorscheme = colors.colorscheme

local M = {}

local function segments_for_right_status(window)
	local segments = {}

	local key_table = window:active_key_table()
	if key_table then
		table.insert(segments, key_table)
	end

	table.insert(segments, window:active_workspace())
	table.insert(segments, wezterm.strftime("%a %b %-d %H:%M"))

	return segments
end

M.setup = function()
	wezterm.on("update-status", function(window, _)
		local SOLID_LEFT_ARROW = utf8.char(0xe0b2)
		local segments = segments_for_right_status(window)

		local bg = wezterm.color.parse(colorscheme["linkarzu_color10"])
		local fg = colorscheme["linkarzu_color14"]

		local gradient_to, gradient_from = bg
		gradient_from = gradient_to:lighten(0.2)
		-- if wezterm.gui and wezterm.gui.get_appearance():find("Dark") then
		-- else
		-- 	gradient_from = gradient_to:darken(0.2)
		-- end

		local gradient = wezterm.color.gradient({
			orientation = "Horizontal",
			colors = { gradient_from, gradient_to },
		}, #segments)

		local elements = {}

		for i, seg in ipairs(segments) do
			local is_first = i == 1

			if is_first then
				table.insert(elements, { Background = { Color = "none" } })
			end
			table.insert(elements, { Foreground = { Color = gradient[i] } })
			table.insert(elements, { Text = SOLID_LEFT_ARROW })

			table.insert(elements, { Foreground = { Color = fg } })
			table.insert(elements, { Background = { Color = gradient[i] } })
			table.insert(elements, { Text = " " .. seg .. " " })
		end

		window:set_right_status(wezterm.format(elements))
	end)
end

return M
