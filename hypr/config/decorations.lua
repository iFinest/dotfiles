-- Look and feel configuration

hl.config({
	general = {
		gaps_in = 2,
		gaps_out = 4,
		border_size = 0,
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
		dim_special = 0.2,
		rounding = 0,
		active_opacity = 0.9,
		inactive_opacity = 0.8,
		fullscreen_opacity = 1,
		blur = {
			size = 4,
			passes = 2,
			noise = 0,
			contrast = 1,
			vibrancy = 0,
			vibrancy_darkness = 0,
			new_optimizations = true,
			ignore_opacity = true,
			popups = true,
			special = false,
		},
	},
})
