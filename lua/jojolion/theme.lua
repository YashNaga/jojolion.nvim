local c = require("jojolion.palette")

local M = {}

function M.setup()
	if vim.g.colors_name then
		vim.cmd("highlight clear")
	end
	vim.g.colors_name = "jojolion"

	local highlights = {
		Normal = { fg = c.bright_wht, bg = c.bg },
		CursorLine = { bg = c.bg_surface },

		LineNr = { fg = c.bright_blk },
		CursorLineNr = { fg = c.bright_cyn, bold = true },
		Visual = { bg = c.red },

		NormalFloat = { fg = c.bright_wht, bg = "none" },
		FloatBorder = { fg = c.bright_mag, bg = "none" },
		FloatTitle = { fg = c.bright_mag, bg = "none", bold = true },

		NormalDark = { fg = c.yellow, bg = c.bg },
		LazyNormal = { fg = c.yellow, bg = c.bg },
		MasonNormal = { fg = c.yellow, bg = c.bg },

		Pmenu = { fg = c.bright_wht, bg = c.bg_surface },
		PmenuSel = { fg = "none", bg = c.red },
		PmenuSbar = { bg = c.bg },
		PmenuThumb = { bg = c.red },

		Statement = { fg = c.bright_mag, bold = true },
		Type = { fg = c.bright_cyn },
		Identifier = { fg = c.bright_wht },
		Function = { fg = c.blue, bold = true },
		String = { fg = c.green },
		Constant = { fg = c.bright_ylw },
		Operator = { fg = c.yellow },
		Comment = { fg = c.cyan, italic = true },

		OilDir = { fg = c.green, bold = true },
	}

	for group, settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

return M
