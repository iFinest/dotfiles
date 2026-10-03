local mainMod = "SUPER"
local launchPrefix = "uwsm app -- " -- if you are not using UWSM, make this empty (e.g. "")

-- AZERTY fix: the number-row keys emit symbols (& é " ' ...) without Shift, so
-- binding to the digit characters fails. Bind by physical keycode instead.
-- Digit d -> evdev keycode: 1..9 => 10..18, 0 => 19
local function digitCode(d)
    return "code:" .. (d == 0 and 19 or (9 + d))
end

---------------------------
---- WINDOW MANAGEMENT ----
---------------------------

-- Window manipulation
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd("hyprctl kill"))
hl.bind(mainMod .. " + Q",      hl.dsp.window.close())
hl.bind(mainMod .. " + W",      hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + F",      hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + R",      hl.dsp.layout("togglesplit"))

-- Change focus
hl.bind(mainMod .. " + Left",   hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + Right",  hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + Up",     hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + Down",   hl.dsp.focus({ direction = "down" }))
hl.bind("ALT + Tab",            hl.dsp.window.cycle_next())

-- Move & Resize with mouse
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

------------------
---- LAUNCHER ----
------------------

hl.bind(mainMod .. " + ALT + W",          hl.dsp.exec_cmd(launchPrefix .. TERMINAL))
hl.bind(mainMod .. " + ALT + E",          hl.dsp.exec_cmd(launchPrefix .. FILE_MANAGER))
hl.bind(mainMod .. " + ALT + R",          hl.dsp.exec_cmd(launchPrefix .. BROWSER))
hl.bind("CONTROL + SHIFT + Escape",       hl.dsp.exec_cmd(launchPrefix .. TERMINAL .. " -e btop"))

-------------------------------
---- WORKSPACES & MONITORS ----
-------------------------------

-- Default (numbered) Workspaces
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. digitCode(key),           hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + CONTROL + " .. digitCode(key), hl.dsp.window.move({ workspace = i }))
end
-- Special Workspaces
hl.bind(mainMod .. " + S",           hl.dsp.focus({ workspace = "name:msg" }))
hl.bind(mainMod .. " + X",           hl.dsp.focus({ workspace = "name:gaming" }))
hl.bind(mainMod .. " + G",           hl.dsp.focus({ workspace = "name:steam" }))
hl.bind(mainMod .. " + H",           hl.dsp.focus({ workspace = "name:mc" }))
hl.bind(mainMod .. " + J",           hl.dsp.focus({ workspace = "name:rbx" }))
hl.bind(mainMod .. " + K",           hl.dsp.focus({ workspace = "name:stat" }))
hl.bind(mainMod .. " + CONTROL + S", hl.dsp.window.move({ workspace = "name:msg" }))
hl.bind(mainMod .. " + CONTROL + G", hl.dsp.window.move({ workspace = "name:steam" }))
hl.bind(mainMod .. " + CONTROL + H", hl.dsp.window.move({ workspace = "name:mc" }))
hl.bind(mainMod .. " + CONTROL + J", hl.dsp.window.move({ workspace = "name:rbx" }))
hl.bind(mainMod .. " + CONTROL + K", hl.dsp.window.move({ workspace = "name:stat" }))

hl.bind(mainMod .. " + T", hl.dsp.workspace.toggle_special("term"))

-- Move to monitor (commented, ill see if i actually need these)
-- hl.bind(mainMod .. " + SHIFT + " .. digitCode(1),     hl.dsp.window.move({ monitor = MONITOR1 }))
-- hl.bind(mainMod .. " + SHIFT + " .. digitCode(2),     hl.dsp.window.move({ monitor = MONITOR2 }))
-- hl.bind(mainMod .. " + SHIFT + " .. digitCode(3),     hl.dsp.window.move({ monitor = MONITOR3 }))

-- Scrolling
hl.bind(mainMod .. " + mouse_down", hl.dsp.layout("move +col"))
hl.bind(mainMod .. " + mouse_up", hl.dsp.layout("move -col"))
hl.bind(mainMod .. " + CONTROL + left",  hl.dsp.layout("swapcol l"))
hl.bind(mainMod .. " + CONTROL + right", hl.dsp.layout("swapcol r"))
---------------
---- OTHER ----
---------------

-- Screenshot
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy'))
-- Color Picker
hl.bind(mainMod .. " + P",     hl.dsp.exec_cmd("hyprpicker -a -n"))
-- SwayNC (Notifications)
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("swaync-client -t"))
-- Wofi (App launcher)
hl.bind("ALT + SPACE", hl.dsp.exec_cmd("pkill wofi || wofi --show drun"))
