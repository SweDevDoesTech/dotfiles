local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")

function gettaglist(s)
	awful.tag({ "1", "2", "3", "4", "5", "6" }, s, awful.layout.layouts[1])

	return awful.widget.taglist {
		screen = s,
		filter = awful.widget.taglist.filter.all,
		style = {
			shape = gears.shape.circle
		},
		layout = {
			spacing = 4,
			layout = wibox.layout.fixed.horizontal
		},
		buttons = {
            awful.button({}, 1, function (t)
                t:view_only()
            end),
            awful.button({}, 4, function (t)
                awful.tag.viewprev(t.screen)
            end),
            awful.button({}, 5, function (t)
                awful.tag.viewnext(t.screen)
            end)
        },
		widget_template = {
			{
				markup = "",
				widget = wibox.widget.textbox
			},
			id = "background_role",
			forced_width = 14,
			forced_height = 14,
			widget = wibox.container.background,
		}
	}
end

return gettaglist
