local awful = require("awful")
local beautiful = require("beautiful")
local wibox = require("wibox")

client.connect_signal("request::titlebars", function(c)
    -- buttons for the titlebar
    local buttons = {
        awful.button({ }, 1, function()
            c:activate { context = "titlebar", action = "mouse_move"  }
        end),
        awful.button({ }, 3, function()
            c:activate { context = "titlebar", action = "mouse_resize"}
        end),
    }

    local dpi = beautiful.xresources.apply_dpi
    awful.titlebar(c, { position = beautiful.titlebar_pos, size = beautiful.titlebar_size }) : setup{
        { -- Top
	    {
		awful.titlebar.widget.closebutton(c),
		awful.titlebar.widget.maximizedbutton(c),
		awful.titlebar.widget.minimizebutton (c),
		spacing = dpi(7),
		layout  = wibox.layout.fixed.vertical
	    },
	    margins = dpi(10),
	    widget = wibox.container.margin
        },
        { -- Middle
	    buttons = buttons,
	    layout = wibox.layout.flex.vertical
        },
        { -- Bottom
	    awful.titlebar.widget.floatingbutton (c),
	    margins = dpi(10),
	    widget = wibox.container.margin
        },
        layout = wibox.layout.align.vertical,
    }
end)


