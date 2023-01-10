local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi

local gettaglist = require("ui.bar.modules.tags")

screen.connect_signal("request::desktop_decoration", function(s)
	local content = wibox.widget {
		{
			{
				widget = wibox.container.background,
				gettaglist(s),
				bg = "#ffffff",
				valign = "left",
				halign = "left",
				layout = wibox.container.place,
			},
			layout = wibox.layout.stack
		},
		bg = beautiful.bg_normal,
		widget = wibox.container.background
	}

	local bar = awful.popup {
		widget = content,
		screen = s,
		minimum_width = s.geometry.width - dpi(12),
		minimum_height = 35,
		shape = gears.shape.rounded_rect,
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
