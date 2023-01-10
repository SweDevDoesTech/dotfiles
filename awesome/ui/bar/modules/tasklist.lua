local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi

local tasklist_buttons = gears.table.join(
	awful.button({ }, 1, function (c)
		if c == client.focus then
			c.minimized = true
		else
			c:emit_signal(
				"request::activate",
				"tasklist",
				{
					raise = true
				}
			)
		end
	end),
	awful.button({ }, 3, function() awful.menu.client_list({ theme = { width = 250 } }) end),
	awful.button({ }, 4, function () awful.client.focus.byidx(1) end),
    awful.button({ }, 5, function () awful.client.focus.byidx(-1) end)
)

function gettasklist(s)
	return awful.widget.tasklist {
    screen = s,
    filter = awful.widget.tasklist.filter.currenttags,
    buttons = tasklist_buttons,
    style = {
        shape = gears.shape.circle,
    },
    layout = {
        spacing = 10,
        layout = wibox.layout.flex.horizontal
    },
    -- Notice that there is *NO* wibox.wibox prefix, it is a template,
    -- not a widget instance.
    widget_template = {
        {
			{
				id = "icon_role",
				widget = wibox.widget.imagebox,
			},
			margins = 4,
			widget = wibox.container.margin,
        },
        id = 'background_role',
        forced_width = dpi(26),
		forced_height = dpi(26),
		widget = wibox.container.background,
    },
}
end

return gettasklist
