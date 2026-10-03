-- Monitor wiki https://wiki.hypr.land/Configuring/Basics/Monitors/
-- Example: output can be found with hyprctl monitors. Edit variables.lua for the monitor outputs instead of here directly
-- hl.monitor({
--     output    = MONITOR1,
--     mode      = "1920x1080@60",
--     position  = "0x0",
--     scale     = "1",
-- })

hl.monitor({
    output    = MONITOR1,
    mode      = "1920x1080@164.92",
    position  = "0x0",
    scale     = 1,
})

hl.monitor({
    output    = MONITOR2,
    mode      = "1920x1080@60",
    position  = "-1280x360",
    scale     = 1.5,
})

hl.monitor({
    output    = MONITOR3,
    mode      = "480x1920@60",
    position  = "0x-320",
    scale     = 1.5,
    transform = 3,
})

hl.window_rule({
    name = "place-xwayland-window",
    match = {
        class = "cstrike_linux64",
    },
    monitor = "DP-1",
    move = { 0, 0 },
})
