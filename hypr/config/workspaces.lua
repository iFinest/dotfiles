-- Workspace rules wiki https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- Add your workspace rules here. Increment the workspace number as you go. Do not have duplicate workspaces.

-- layout: string = {dwindle | master | monocle | scrolling}

-- 1
hl.workspace_rule({
	workspace = "1",
	monitor = MONITOR1,
	persistent = true,
	layout = "scrolling",
})
-- Named
hl.workspace_rule({
	workspace = "name:msg",
	monitor = MONITOR2,
	default = true,
	persistent = true,
	layout = "scrolling",
})
hl.workspace_rule({
	workspace = "name:gaming",
	monitor = MONITOR1,
	default = true,
	gaps_in = 0,
	gaps_out = 0,
})
hl.workspace_rule({
	workspace = "name:stat",
	monitor = MONITOR3,
	default = true,
})
-- Special
hl.workspace_rule({
	workspace = "special:term",
})

-- Effects
hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
hl.workspace_rule({ workspace = "f[1]", gaps_out = 0, gaps_in = 0 })
hl.window_rule({ match = { float = false, workspace = "w[tv1]" }, border_size = 0 })
hl.window_rule({ match = { float = false, workspace = "f[1]" }, border_size = 0 })
