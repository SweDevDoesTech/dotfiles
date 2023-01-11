local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi

local gettaglist = require("ui.bar.modules.tags")
local gettasklist = require("ui.bar.modules.tasklist")
local powerbutton = require("ui.bar.modules.powerbutton")

screen.connect_signal("request::desktop_decoration", function(s)
	local content = wibox.widget {
		{
			{
				gettasklist(s),
				valign = "center",
				halign = "center",
				layout = wibox.container.place
			},
			{
				powerbutton,
				valign = "right",
				halign = "right",
				layout = wibox.container.place,
			},
			{
				gettaglist(s),
				valign = "left",
				halign = "left",
				layout = wibox.container.place,
			},
			layout = wibox.layout.stack
		},
		bg = beautiful.bg_normal,
		left = 10,
		right = 0,
		widget = wibox.container.margin
	}

	local bar = awful.popup {
		widget = content,
		screen = s,
		minimum_width = s.geometry.width - dpi(12),
		minimum_height = 35,
		shape = function(cr, width, height) gears.shape.rounded_rect(cr, width, height, 8) end,
		visible = true,
		placement = function(d)
			return awful.placement.top(d, {
				margins = {
					top = beautiful.useless_gap * 2
				}
			})
		end
	}

	bar:struts {
		top = 35 + beautiful.useless_gap * 2
	}
end)
