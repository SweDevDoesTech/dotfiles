local helpers = {}

function helpers.rgbaToHex(r, g, b, a)
	return string.format("%02x%02x%02x%02x",
		math.floor(a),
		math.floor(r),
		math.floor(g),
		math.floor(b)
	)
end

return helpers
