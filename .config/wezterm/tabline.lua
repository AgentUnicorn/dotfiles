local wezterm = require("wezterm")
local colors = require("colors")
local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")

local M = {}

function M.setup()
	tabline.setup({
		options = {
			theme = colors.colors,
			section_separators = {
				left = "",
				right = wezterm.nerdfonts.pl_right_hard_divider,
			},
			component_separators = {
				left = "",
				right = wezterm.nerdfonts.pl_right_soft_divider,
			},
			tab_separators = {
				left = "",
				right = "",
			},
		},
		sections = {
			tabline_a = { "mode" },
			tabline_b = { "workspace" },
			tabline_c = { " " },
			tab_active = {
				"index",
				{ "parent", padding = 0 },
				"/",
				{ "cwd", padding = { left = 0, right = 1 } },
				{ "zoomed", padding = 0 },
			},
			tab_inactive = { "index", { "process", padding = { left = 0, right = 1 } } },
			tabline_x = { "ram", "cpu" },
			tabline_y = { "datetime", "battery" },
			tabline_z = { "domain" },
		},
		extensions = {},
	})
end

return M
