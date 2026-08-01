-- Migrated from config/autostart.conf
-- See https://wiki.hypr.land/Configuring/Basics/Autostart/
--
-- NOTE: the two rule tables below are the Lua equivalent of the old
-- `exec-once = [workspace N silent] cmd` bracket syntax. Per the hl API stub
-- (/usr/share/hypr/stubs/hl.meta.lua), exec_cmd's signature is
-- `exec_cmd(cmd, rules?: table<string, string|number|boolean>)`, and there is no
-- `silent` key -- `silent` is a modifier of the workspace value itself, so it goes
-- inside the workspace string (`workspace = "1 silent"`), matching how
-- config/windowrules.lua writes `workspace = "3 silent"` for discord/steam/spotify.

local defaults = require("config.defaults")

hl.on("hyprland.start", function()
    -- ----------------------------------- Bakgrundsapplikationer -------------------------------------------------
    hl.exec_cmd("nm-applet") -- Network Manager Applet   - För att kunna meka med internetinställningar vid behov
    hl.exec_cmd("waybar")    -- Waybar                   - Statusbar i toppen av skärmytan
    hl.exec_cmd("hyprpaper") -- Hyprpaper                - Bakgrundsbildhanterare skapat för hypr-ekosystemet
    hl.exec_cmd("hypridle")  -- Hypridle                 - Idle-hanterare skapat för hypr-ekosystemet
    hl.exec_cmd("swaync")    -- Sway Notification Center - Notifikationshanterare
    -- ------------------------------------------------------------------------------------------------------------

    hl.exec_cmd(defaults.webbrowser, { workspace = "1 silent" })
    hl.exec_cmd(defaults.terminal,   { workspace = "2 silent" })

    hl.exec_cmd("flatpak run com.discordapp.Discord")
    hl.exec_cmd("steam")
    hl.exec_cmd("spotify")

    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)
