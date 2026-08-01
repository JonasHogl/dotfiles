-- Migrated from config/monitor.conf
-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

-- Skärmkonfig för stationära
-- hl.monitor({ output = "HDMI-A-1", mode = "2560x1440",    position = "0x0",    scale = 1 })
-- hl.monitor({ output = "HDMI-A-2", mode = "2560x1440@144", position = "2560x0", scale = 1 })

-- Ultrawide
hl.monitor({ output = "DP-2", mode = "5120x1440@240", position = "0x0", scale = 1 })
-- hl.monitor({ output = "HDMI-A-1", mode = "5120x1440@240", position = "0x0", scale = 1 })

-- Skärmkonfig för laptop
hl.monitor({ output = "eDP-1", mode = "1920x1080@60", position = "0x0", scale = 1 })
