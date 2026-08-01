-- Migrated from config/windowrules.conf
-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
    name  = "discord starts on dedicated workspace",
    match = { class = "discord" },

    workspace = "3 silent",
})

hl.window_rule({
    name  = "steam starts on dedicated workspace",
    match = { class = "steam" },

    workspace = "4 silent",
})

hl.window_rule({
    name  = "start spotify on dedicated workspace",
    match = { class = "(?i)spotify" },

    workspace = "5 silent",
})

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

-- Fix some dragging issues with XWayland
-- (older equivalent commented in the original: windowrulev2 = nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0)

-- Lägg till blur
--
-- hl.layer_rule({ name = "blur-waybar",         match = { namespace = "waybar" }, blur = true })
-- hl.layer_rule({ name = "ignorezero-waybar",    match = { namespace = "waybar" }, ignore_alpha = true })
-- hl.layer_rule({ name = "ignorealpha-waybar",   match = { namespace = "waybar" }, ignore_alpha = 0.5 })
--
-- hl.layer_rule({ name = "blur-wofi",            match = { namespace = "wofi" }, blur = true })
-- hl.layer_rule({ name = "ignorezero-wofi",      match = { namespace = "wofi" }, ignore_alpha = true })
-- hl.layer_rule({ name = "ignorealpha-wofi",     match = { namespace = "wofi" }, ignore_alpha = 0.5 })
--
-- hl.layer_rule({ name = "blur-swaync-control",  match = { namespace = "swaync-control-center" }, blur = true })
-- hl.layer_rule({ name = "blur-swaync-notif",    match = { namespace = "swaync-notification-window" }, blur = true })
-- hl.layer_rule({ name = "ignorezero-swaync-control", match = { namespace = "swaync-control-center" }, ignore_alpha = true })
-- hl.layer_rule({ name = "ignorezero-swaync-notif",   match = { namespace = "swaync-notification-window" }, ignore_alpha = true })
-- hl.layer_rule({ name = "ignorealpha-swaync-control", match = { namespace = "swaync-control-center" }, ignore_alpha = 0.5 })
-- hl.layer_rule({ name = "ignorealpha-swaync-notif",   match = { namespace = "swaync-notification-window" }, ignore_alpha = 0.5 })
