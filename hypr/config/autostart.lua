-- Auto-start config
-- if you dont use UWSM add your auto start programs here, otherwise use XDG autostart https://wiki.archlinux.org/title/XDG_Autostart

hl.on("hyprland.start", function()
	hl.exec_cmd("dbus-update-activation-environment --systemd --all")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("/home/finest/.local/bin/workspace-wallpaper")
	hl.exec_cmd(
		"mpvpaper -p -a FULL -o 'no-audio --loop-file=inf --hwdec=auto' DP-1 '/home/finest/Pictures/Wallpapers/silent-winter-night.mp4'"
	)
	hl.exec_cmd("xhost +SI:localuser:root")
	hl.exec_cmd("uwsm app -- systemctl --user start hyprpolkitagent")
end)
