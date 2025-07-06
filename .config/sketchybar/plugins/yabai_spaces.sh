local sbar = require("sketchybar")
local colors = require("colors").spaces

for i = 1, 10 do
	local space = sbar.add("space", "space." .. i, {
		position = "left",
		space = i,
		icon = { width = 7 },
		background = {
			color = colors.unselected,
			corner_radius = 4,
			height = 8,
			padding_left = i == 1 and 4 or 0,
			padding_right = 4,
		},
	})

	space:subscribe("space_change", function (env)
		local selected = env.SELECTED == "true"
		sbar:animate("circ", 15, function()
			space:set({
				icon = { width = selected and 31 or 7 },
				background = { color = selected and colors.selected or colors.unselected },
			})
		end)
	end)
end

sbar.add("bracket", { "/space\\.\\d*/" }, {
	blur_radius = 32,
	background = {
		color = colors.bg,
		corner_radius = 8,
		height = 16,
	},
})