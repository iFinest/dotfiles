-- Look and feel configuration

hl.config({
	general = {
		gaps_in = 2,
		gaps_out = 4,
		border_size = 0,
		extend_border_grab_area = 10,
		resize_on_border = true,
		col = {
			active_border = {
				colors = { CACHYLGREEN, CACHYDGREEN },
				angle = 45,
			},
			inactive_border = CACHYGRAY,
		},
	},
	group = {
		col = {
			border_active = CACHYLBLUE,
			border_inactive = CACHYGRAY,
			border_locked_active = CACHYDBLUE,
			border_locked_inactive = CACHYGRAY,
		},
		groupbar = {
			col = {
				active = CACHYLGREEN,
				inactive = CACHYGRAY,
				locked_active = CACHYDBLUE,
				locked_inactive = CACHYGRAY,
			},
		},
	},
	decoration = {
		dim_special = 0.2,
		rounding = 0,
		active_opacity = 0.9,
		inactive_opacity = 0.75,
		fullscreen_opacity = 1,
		blur = {
			size = 4,
			passes = 2,
			noise = 0,
			contrast = 1.8,
			vibrancy = 0.1,
			vibrancy_darkness = 0.05,
			new_optimizations = true,
			ignore_opacity = true,
			popups = true,
			special = true,
		},
	},
})
