-- Look and feel configuration

hl.config({
	general = {
		gaps_in = 0,
		gaps_out = 0,
		border_size = 1,
		extend_border_grab_area = 12,
		resize_on_border = true,
		col = {
			active_border = {
				colors = { COLOR_teal3, COLOR_teal2 },
				angle = 0,
			},
			inactive_border = COLOR_teal0,
		},
	},
	decoration = {
		dim_special = 0,
		rounding = 0,
		active_opacity = 1,
		inactive_opacity = 1,
		fullscreen_opacity = 1,
		blur = {},
	},
})
