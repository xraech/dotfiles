local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")
local beautiful = require("beautiful")

mytextclock = wibox.widget.textclock()

screen.connect_signal("request::desktop_decoration", function(s)
    -- Each screen has its own tag table.
    -- tag table
    awful.tag(beautiful.tag_names, s, beautiful.tag_styles)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()

    -- Create an imagebox widget which will contain an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox {
        screen  = s,
        buttons = {
            awful.button({ }, 1, function () awful.layout.inc( 1) end),
            awful.button({ }, 3, function () awful.layout.inc(-1) end),
            awful.button({ }, 4, function () awful.layout.inc( 1) end),
            awful.button({ }, 5, function () awful.layout.inc(-1) end),
        },
    }

    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist {
        screen  = s,
        filter  = awful.widget.taglist.filter.all,
        buttons = {
            awful.button({ }, 1, function(t) t:view_only() end),
            awful.button({ modkey }, 1, function(t)
                                            if client.focus then
                                                client.focus:move_to_tag(t)
                                            end
                                        end),
            awful.button({ }, 3, awful.tag.viewtoggle),
            awful.button({ modkey }, 3, function(t)
                                            if client.focus then
                                                client.focus:toggle_tag(t)
                                            end
                                        end),
            awful.button({ }, 4, function(t) awful.tag.viewnext(t.screen) end),
            awful.button({ }, 5, function(t) awful.tag.viewprev(t.screen) end),
        }
    }

    new_shape = function(radius)
	return function(cr, width, height)
	    gears.shape.rounded_rect(cr, width, height, radius)
	end
    end
    s.mytasklist = awful.widget.tasklist {
        screen  = s,
        filter  = awful.widget.tasklist.filter.currenttags,
        buttons = {
            awful.button({ }, 1, function (c)
                c:activate { context = "tasklist", action = "toggle_minimization" }
            end),
            awful.button({ }, 3, function() awful.menu.client_list { theme = { width = 250 } } end),
            awful.button({ }, 4, function() awful.client.focus.byidx( 1) end),
            awful.button({ }, 5, function() awful.client.focus.byidx(-1) end),
        },
	style    = {
	    shape_border_width = 0,
	    shape_border_color = beautiful.bg_minimize,
	    shape  = new_shape(beautiful.border_radius)
	},
	layout   = {
	    spacing = 10,
	    spacing_widget = {
		{
		    forced_width = 5,
		    shape        = gears.shape.circle,
		    widget       = wibox.widget.separator
		},
		valign = 'center',
		halign = 'center',
		widget = wibox.container.place,
	    },
	    layout  = wibox.layout.flex.horizontal
	}
    }

    -- Create the wibox
    s.leftwibox = wibox({ visible = beautiful.l_vis, position = beautiful.l_pos, screen = s, x = beautiful.l_x, y = beautiful.l_y, width = beautiful.l_width, height = beautiful.l_height, type = "normal", shape  = new_shape(beautiful.border_radius) })
    s.centerwibox = wibox({ visible = beautiful.c_vis, position = beautiful.c_pos, screen = s, x = beautiful.c_x, y = beautiful.c_y, width = beautiful.c_width, height = beautiful.c_height, type = "normal", bg = "#FF000000"})
    s.rightwibox = wibox({ visible = beautiful.r_vis, position = beautiful.r_pos, screen = s, x = beautiful.r_x, y = beautiful.r_y, width = beautiful.r_width, height = beautiful.r_height, type = "normal", shape  = new_shape(beautiful.border_radius) })

    -- float systray
    s.systray = wibox({	ontop = true, visible = beautiful.systray_vis, position = beautiful.systray_pos, screen = s, x = beautiful.systray_x, y = beautiful.systray_y, width = beautiful.systray_width, height = beautiful.systray_height, type = "normal", shape  = new_shape(beautiful.border_radius) })
    s.systray:setup { 
        layout = wibox.layout.align.horizontal,
	wibox.widget.systray(),
    }

    -- Add widgets to the wibox
    s.leftwibox.widget = {
        layout = wibox.layout.fixed.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            s.mytaglist,
        },
    }
    s.centerwibox.widget = {
	--s.mypromptbox,
	layout = wibox.layout.flex.horizontal,
	s.mytasklist, -- Middle widget
	bg = "#000000AA",
    }
    s.rightwibox.widget = {
	layout = wibox.layout.align.horizontal,
	mytextclock,
	s.mylayoutbox,
    }
    s.padding = { top = beautiful.useless_gap * 2 + beautiful.l_height }
end)
