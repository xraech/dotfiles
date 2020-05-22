local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local awful = require("awful")
local rnotification = require("ruled.notification")
local dpi = xresources.apply_dpi
local xrdb = xresources.get_current_theme()
local gfs = require("gears.filesystem")
local theme = dofile(gfs.get_themes_dir() .. "default/theme.lua")
local gears = require("gears")

local icon_path = os.getenv("HOME") .. "/.config/awesome/themes/luna/icons/"
local titlebar_icon_path = os.getenv("HOME") .. "/.config/awesome/themes/luna/icons/titlebar/"
local tip = titlebar_icon_path

-- Get window resolution
screen_size = awful.screen.focused().geometry.width

-- Wallpaper
theme.wallpaper = os.getenv("HOME") .. "/.config/awesome/wallpapers/wall.jpg"

-- Tags
-- Names 
local t = awful.layout.suit
awful.layout.layouts = { t.floating, t.spiral.dwindle, t.max, t.max.fullscreen, t.magnifier }
local l = awful.layout.layouts
theme.tag_names = { "1", "2", "3", "4", "5", "6", "7", "8", "9" }
theme.tag_styles = { l[2], l[5], l[3], l[1], l[3], l[1], l[2], l[2], l[2] }

-- Gaps & Borders
theme.gap_single_client  = true
theme.useless_gap = dpi(5)
theme.border_width = 0
theme.border_radius = dpi(7)

-- Theme
theme.font = 'ProFontWindows Nerd Font Mono 12'
theme.tasklist_align = "center"

theme.bg_dark       = xrdb.color0
theme.bg_normal     = xrdb.background
theme.bg_focus      = xrdb.color4
theme.bg_urgent     = xrdb.background
theme.bg_minimize   = xrdb.color0
theme.bg_systray    = bg_dark

theme.fg_normal     = xrdb.foreground
theme.fg_focus      = xrdb.color7
theme.fg_urgent     = xrdb.color1
theme.fg_minimize   = xrdb.foreground

theme.xcolor0 = xrdb.color0
theme.xcolor1 = xrdb.color1
theme.xcolor2 = xrdb.color2
theme.xcolor3 = xrdb.color3
theme.xcolor4 = xrdb.color4
theme.xcolor5 = xrdb.color5
theme.xcolor6 = xrdb.color6
theme.xcolor7 = xrdb.color7
theme.xcolor8 = xrdb.color8
theme.xcolor9 = xrdb.color9
theme.xcolor10 = xrdb.color10
theme.xcolor11 = xrdb.color11
theme.xcolor12 = xrdb.color12
theme.xcolor13 = xrdb.color13
theme.xcolor14 = xrdb.color14
theme.xcolor15 = xrdb.color15

-- Wibar Configuration
-- Systray
theme.systray_pos = "top"
theme.systray_vis = false
theme.systray_width = dpi(151)
theme.systray_height = dpi(30)
theme.systray_x = theme.useless_gap * 2 + screen_size/2 - theme.systray_width/2
theme.systray_y = theme.useless_gap * 2 + theme.systray_height

-- Left Wibar
theme.l_pos = "top"
theme.l_vis = true
theme.l_width = dpi(151)
theme.l_height = dpi(30)
theme.l_x = theme.useless_gap * 2
theme.l_y = theme.useless_gap * 2

-- Center Wibar
theme.c_pos = "top"
theme.c_vis = true
theme.c_width = dpi(1000)
theme.c_height = dpi(30)
theme.c_x = theme.useless_gap * 2 + screen_size/2 - theme.c_width/2
theme.c_y = theme.useless_gap * 2

-- Right Wibar
theme.r_pos = "top"
theme.r_vis = true
theme.r_width = dpi(185)
theme.r_height = dpi(30)
theme.r_x = screen_size -theme.r_width - theme.useless_gap * 2
theme.r_y = theme.useless_gap * 2

-- Notification
theme.notification_font = "SFNS Display 10"
theme.notification_urgent_font = "SFNS Display 10"
theme.notification_urgent_bg = xrdb.foreground
theme.notification_urgent_fg = xrdb.background
theme.notification_fg = xrdb.foreground
theme.notification_bg = xrdb.background
theme.notification_urgent_timeout = 0
theme.notification_timeout = 5
theme.notification_urgent_position = "top_right"
theme.notification_position = "top_middle"
theme.notification_padding = dpi(16)
theme.notification_min_width = dpi(150)
theme.notification_max_width = dpi(300)
theme.notification_icon_size = dpi(64)
theme.notification_margin = dpi(7)
theme.notification_spacing = theme.l_height + theme.useless_gap * 4
theme.notification_border_width = 0
theme.notification_border_color = "#00000000"
theme.notification_position = "top_middle"
theme.notification_shape = function(cr, w, h) gears.shape.rounded_rect(cr, w, h, theme.border_radius/2 or 0) end

-- Titlebars
theme.titlebar_pos = "left"
theme.titlebar_size = dpi(30)
theme.titlebar_bg_focus = xrdb.color4
theme.titlebar_bg_normal = xrdb.background 
theme.titlebar_fg_focus = xrdb.foreground
theme.titlebar_fg_normal = xrdb.foreground

-- Icons
-- Close Button
theme.titlebar_close_button_normal = tip .. "close_normal.svg"
theme.titlebar_close_button_focus  = tip .. "close_focus.svg"

-- Minimize Button
theme.titlebar_minimize_button_normal = tip .. "minimize_normal.svg"
theme.titlebar_minimize_button_focus  = tip .. "minimize_focus.svg"

-- Ontop Button
theme.titlebar_ontop_button_normal_inactive = tip .. "ontop_normal_inactive.svg"
theme.titlebar_ontop_button_focus_inactive  = tip .. "ontop_focus_inactive.svg"
theme.titlebar_ontop_button_normal_active = tip .. "ontop_normal_active.svg"
theme.titlebar_ontop_button_focus_active  = tip .. "ontop_focus_active.svg"

-- Sticky Button
theme.titlebar_sticky_button_normal_inactive = tip .. "sticky_normal_inactive.svg"
theme.titlebar_sticky_button_focus_inactive  = tip .. "sticky_focus_inactive.svg"
theme.titlebar_sticky_button_normal_active = tip .. "sticky_normal_active.svg"
theme.titlebar_sticky_button_focus_active  = tip .. "sticky_focus_active.svg"

-- Floating Button
theme.titlebar_floating_button_normal_inactive = tip .. "floating_normal_inactive.svg"
theme.titlebar_floating_button_focus_inactive  = tip .. "floating_focus_inactive.svg"
theme.titlebar_floating_button_normal_active = tip .. "floating_normal_active.svg"
theme.titlebar_floating_button_focus_active  = tip .. "floating_focus_active.svg"

-- Maximized Button
theme.titlebar_maximized_button_normal_inactive = tip .. "maximized_normal_inactive.svg"
theme.titlebar_maximized_button_focus_inactive  = tip .. "maximized_focus_inactive.svg"
theme.titlebar_maximized_button_normal_active = tip .. "maximized_normal_active.svg"
theme.titlebar_maximized_button_focus_active  = tip .. "maximized_focus_active.svg"

-- Hovered Close Button
theme.titlebar_close_button_normal_hover = tip .. "close_normal_hover.svg"
theme.titlebar_close_button_focus_hover  = tip .. "close_focus_hover.svg"

-- Hovered Minimize Buttin
theme.titlebar_minimize_button_normal_hover = tip .. "minimize_normal_hover.svg"
theme.titlebar_minimize_button_focus_hover  = tip .. "minimize_focus_hover.svg"

-- Hovered Ontop Button
theme.titlebar_ontop_button_normal_inactive_hover = tip .. "ontop_normal_inactive_hover.svg"
theme.titlebar_ontop_button_focus_inactive_hover  = tip .. "ontop_focus_inactive_hover.svg"
theme.titlebar_ontop_button_normal_active_hover = tip .. "ontop_normal_active_hover.svg"
theme.titlebar_ontop_button_focus_active_hover  = tip .. "ontop_focus_active_hover.svg"

-- Hovered Sticky Button
theme.titlebar_sticky_button_normal_inactive_hover = tip .. "sticky_normal_inactive_hover.svg"
theme.titlebar_sticky_button_focus_inactive_hover  = tip .. "sticky_focus_inactive_hover.svg"
theme.titlebar_sticky_button_normal_active_hover = tip .. "sticky_normal_active_hover.svg"
theme.titlebar_sticky_button_focus_active_hover  = tip .. "sticky_focus_active_hover.svg"

-- Hovered Floating Button
theme.titlebar_floating_button_normal_inactive_hover = tip .. "floating_normal_inactive_hover.svg"
theme.titlebar_floating_button_focus_inactive_hover  = tip .. "floating_focus_inactive_hover.svg"
theme.titlebar_floating_button_normal_active_hover = tip .. "floating_normal_active_hover.svg"
theme.titlebar_floating_button_focus_active_hover  = tip .. "floating_focus_active_hover.svg"

-- Hovered Maximized Button
theme.titlebar_maximized_button_normal_inactive_hover = tip .. "maximized_normal_inactive_hover.svg"
theme.titlebar_maximized_button_focus_inactive_hover  = tip .. "maximized_focus_inactive_hover.svg"
theme.titlebar_maximized_button_normal_active_hover = tip .. "maximized_normal_active_hover.svg"
theme.titlebar_maximized_button_focus_active_hover  = tip .. "maximized_focus_active_hover.svg"


-- Setting Wallpaper
screen.connect_signal("request::wallpaper", function(s)
    -- Wallpaper
    if theme.wallpaper then
        local wallpaper = theme.wallpaper
        -- If wallpaper is a function, call it with the screen
        if type(wallpaper) == "function" then
            wallpaper = wallpaper(s)
        end
        gears.wallpaper.maximized(wallpaper, s, true)
    end
end)



return theme
