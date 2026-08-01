-- Migrated from the deprecated hyprlang (.conf) config to Lua.
-- See https://wiki.hypr.land/Configuring/Start/

require("config.environment")
require("config.defaults")
require("config.variables")
require("config.decorations")
require("config.animations")
require("config.input")
require("config.monitor")
require("config.keybinds")
require("config.autostart")
require("config.windowrules")

hl.config({
    debug = {
        disable_logs = true,
    },
})
