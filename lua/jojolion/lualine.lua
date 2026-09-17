local c = require("jojolion.palette")

local colors = {
	bg = c.bg_surface,
	text = c.bright_ylw,
	muted = c.yellow,

	normal = c.fg,
	insert = c.blue,
	visual = c.bright_cyn,
	replace = c.cyan,
	terminal = c.bright_ylw,
}

local theme = {
	normal = {
		a = { fg = c.bg, bg = colors.normal, bold = true },
		b = { fg = colors.text, bg = c.red },
		c = { fg = colors.muted, bg = colors.bg },
	},
	insert = {
		a = { fg = c.bg, bg = colors.insert, bold = true },
		b = { fg = colors.text, bg = c.red },
	},
	visual = {
		a = { fg = c.bg, bg = colors.visual, bold = true },
		b = { fg = colors.text, bg = c.red },
	},
	replace = {
		a = { fg = c.bg, bg = colors.replace, bold = true },
		b = { fg = colors.text, bg = c.red },
	},
	command = {
		a = { fg = colors.normal, bg = c.bg_surface, bold = true },
		b = { fg = colors.text, bg = c.red },
	},
	terminal = {
		a = { fg = c.bg, bg = colors.terminal, bold = true },
		b = { fg = colors.text, bg = c.red },
	},
	inactive = {
		a = { fg = colors.muted, bg = c.black },
		b = { fg = colors.muted, bg = c.black },
		c = { fg = colors.muted, bg = c.black },
	},
}

return theme
