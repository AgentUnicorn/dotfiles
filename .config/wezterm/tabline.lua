local wezterm = require("wezterm")
local colors = require("colors")
local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")

local M = {}
local colorscheme = colors.colorscheme

function M.setup()
	tabline.setup({
		options = {
			icons_enabled = false,
			tabs_enabled = true,
			theme = colors.colors,
			theme_overrides = {
				normal_mode = {
					a = { bg = colorscheme["shirodev_color02"] },
					b = { fg = colorscheme["shirodev_color02"] },
				},
				tab = {
					active = { fg = colorscheme["shirodev_color14"], bg = colorscheme["shirodev_color03"] },
					inactive = { fg = colorscheme["shirodev_color14"], bg = colorscheme["shirodev_color15"] },
				},
			},
			section_separators = "",
			component_separators = "",
			tab_separators = "",
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
