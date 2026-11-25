-- Auto-start config
-- if you dont use UWSM add your auto start programs here, otherwise use XDG autostart https://wiki.archlinux.org/title/XDG_Autostart

hl.on("hyprland.start", function()
	hl.exec_cmd("xhost +SI:localuser:root")
	hl.exec_cmd("xrandr --output DP-1 --primary")
	hl.exec_cmd("echo hi")
	hl.exec_cmd("uwsm-app -- awww-daemon")
	hl.exec_cmd("uwsm-app -- /home/finest/.local/bin/workspace-wallpaper")
	hl.exec_cmd(
		"uwsm-app -- mpvpaper -p -a FULL -o 'no-audio --loop-file=inf --hwdec=auto' DP-1 '/home/finest/Pictures/Wallpapers/silent-winter-night.mp4'"
	)
	hl.exec_cmd("uwsm-app -- waybar -c /home/finest/.config/waybar/config.jsonc")
	hl.exec_cmd("uwsm-app -- waybar -c /home/finest/.config/waybar/config-secondary.jsonc")
	hl.exec_cmd("uwsm-app -- waybar -c /home/finest/.config/waybar/config-statmonitor.jsonc")
	hl.timer(function()
		hl.exec_cmd("pw-play /path/to/your/startup-sound.ogg")
	end, { timeout = 500, type = "oneshot" })
end)
