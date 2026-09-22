local M = {}

function M.apply_colours()
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

	vim.api.nvim_set_hl(0, "MiniStatuslineModeNormal", { fg = c.bg, bg = colors.normal, bold = true })
	vim.api.nvim_set_hl(0, "MiniStatuslineModeInsert", { fg = c.bg, bg = colors.insert, bold = true })
	vim.api.nvim_set_hl(0, "MiniStatuslineModeVisual", { fg = c.bg, bg = colors.visual, bold = true })
	vim.api.nvim_set_hl(0, "MiniStatuslineModeReplace", { fg = c.bg, bg = colors.replace, bold = true })
	vim.api.nvim_set_hl(0, "MiniStatuslineModeCommand", { fg = colors.normal, bg = c.bg_surface, bold = true })
	vim.api.nvim_set_hl(0, "MiniStatuslineModeOther", { fg = c.bg, bg = colors.terminal, bold = true })

	vim.api.nvim_set_hl(0, "MiniStatuslineDevinfo", { fg = colors.text, bg = c.red })
	vim.api.nvim_set_hl(0, "MiniStatuslineFilename", { fg = colors.muted, bg = colors.bg })
	vim.api.nvim_set_hl(0, "MiniStatuslineFileinfo", { fg = colors.text, bg = c.red })
	vim.api.nvim_set_hl(0, "MiniStatuslineInactive", { fg = colors.muted, bg = c.black })
end

return M
