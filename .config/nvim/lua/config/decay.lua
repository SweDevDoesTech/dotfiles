local present, decay = pcall(require, 'decay')

if not present then
  error('Can\'t import decay, make sure u installed it! :v')
end

local colors = require('decay.core').get_colors("dark")

local background = "#0d0e11"

decay.setup({
	style = 'dark',
	nvim_tree = {
		contrast = false, -- or false to disable tree contrast
	},
	override = {
		Normal = { bg = background },
		SignColumn = { bg = background, fg = background },
		MsgArea = { fg = colors.foreground, bg = background },
		ModeMsg = { fg = colors.foreground, bg = background },
		MsgSeparator = { fg = colors.foreground, bg = background },
		NormalNC = { fg = colors.foreground, bg = background },
		Folded = { fg = colors.blue, bg = background },
		FoldColumn = { fg = colors.blue, bg = background },
		LineNr = { fg = colors.brightblack, bg = background },
		FloatBorder = { fg = colors.background, bg = background },
		VertSplit = { bg = background, fg = colors.black },
		CursorColumn = { bg = background },
		ColorColumn = { bg = background },
		NormalFloat = { bg = background },
		VisualNOS = { bg = background },
		WarningMsg = { fg = colors.yellow, bg = background },
		DiffAdd = { bg = background, fg = colors.green },
		DiffChange = { bg = background, fg = colors.blue },
		DiffDelete = { bg = background, fg = colors.red },
		MatchParen = { fg = colors.blue, bg = background },
		Conceal = { fg = colors.blue, bg = background },
		ErrorMsg = { fg = colors.red, bg = background },
		Search = { fg = background, bg = colors.brightgreen },
		IncSearch = { fg = background, bg = colors.brightgreen },
		EndOfBuffer = { fg = background },
		Ignore = { fg = colors.white, bg = background },
		Todo = { fg = colors.red, bg = background },
		Error = { fg = colors.red, bg = background },
		TabLineSel = { fg = colors.foreground, bg = background },
		TabLineFill = { fg = colors.foreground, bg = background },
	
		["@text.note"] = { fg = background, bg = colors.magenta },
		["@text.warning"] = { fg = background, bg = colors.yellow },
		["@text.danger"] = { fg = background, bg = colors.red },
		
		LspTroubleNormal = { fg = foreground, bg = colors.background },
	
		NeogitHunkHeader = { bg = background, fg = colors.foreground },
		NeogitDiffContextHighlight = { bg = background, fg = colors.foreground },
		
		TelescopeBorder = { fg = colors.black, bg = background },
		TelescopeNormal = { fg = colors.foreground, bg = background },
		TelescopeSelection = { fg = background, bg = colors.green },

		NvimTreeNormal = { fg = colors.foreground, bg = background },
		NvimTreeNormalNC = { fg = colors.foreground, bg = background },
		NvimTreeStatusLineNC = { bg = background, fg = background },

		BufferInactiveSign = { fg = background, bg = background },
		BufferOffset = { fg = background, bg = background },
	    BufferTabpageFill = { fg = background, bg = background },
	}
})
