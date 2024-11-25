function highlights()
	local c = require("chunnoo.colors")

	vim.o.termguicolors = false

	vim.api.nvim_set_hl(0, "Normal", { ctermfg = c.white })
	vim.api.nvim_set_hl(0, "Statement", { ctermfg = c.light_gray })
	vim.api.nvim_set_hl(0, "Keyword", { ctermfg = c.pink })
	vim.api.nvim_set_hl(0, "Function", { ctermfg = c.blue })
	vim.api.nvim_set_hl(0, "Type", { ctermfg = c.yellow })
	vim.api.nvim_set_hl(0, "PreProc", { ctermfg = c.pink })
	vim.api.nvim_set_hl(0, "Number", { ctermfg = c.orange })
	vim.api.nvim_set_hl(0, "Constant", { link = c.cyan })
	vim.api.nvim_set_hl(0, "Special", { ctermfg = c.cyan })
	vim.api.nvim_set_hl(0, "Boolean", { ctermfg = c.orange })
	vim.api.nvim_set_hl(0, "LineNr", { ctermfg = c.gray })
	vim.api.nvim_set_hl(0, "Character", { ctermfg = c.green })
	vim.api.nvim_set_hl(0, "String", { ctermfg = c.green })
	vim.api.nvim_set_hl(0, "Operator", { ctermfg = c.pink })
	vim.api.nvim_set_hl(0, "Comment", { ctermfg = c.gray })
	vim.api.nvim_set_hl(0, "Added", { ctermfg = c.green })
	vim.api.nvim_set_hl(0, "Removed", { ctermfg = c.red })
	vim.api.nvim_set_hl(0, "Changed", { ctermfg = c.yellow })
	vim.api.nvim_set_hl(0, "Visual", { ctermbg = c.dark_gray })
	vim.api.nvim_set_hl(0, "@variable", { ctermfg = c.red })
	vim.api.nvim_set_hl(0, "@property", { ctermfg = c.red })
	vim.api.nvim_set_hl(0, "@string.regexp", { ctermfg = c.green })
	vim.api.nvim_set_hl(0, "@constant", { ctermfg = c.cyan })
	vim.api.nvim_set_hl(0, "@constant.macro", { ctermfg = c.cyan })
	vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = 236 })

	vim.api.nvim_set_hl(
		0,
		"StatusLine",
		{ ctermbg = c.darker_gray, cterm = {} }
	)
	vim.api.nvim_set_hl(
		0,
		"StatusLineNC",
		{ ctermbg = c.darker_gray, cterm = {} }
	)
	vim.api.nvim_set_hl(0, "WinSeparator", { ctermfg = c.dark_gray })
	vim.api.nvim_set_hl(0, "ModeMsg", { ctermfg = c.light_gray })

	vim.api.nvim_set_hl(
		0,
		"Pmenu",
		{ ctermfg = c.white, ctermbg = c.darker_gray }
	)
	vim.api.nvim_set_hl(
		0,
		"PmenuSel",
		{ ctermfg = c.white, ctermbg = c.dark_gray, cterm = bold, bold = true }
	)

	vim.api.nvim_set_hl(
		0,
		"MatchParen",
		{ ctermfg = none, cterm = bold, bold = true }
	)

	vim.api.nvim_set_hl(0, "DiagnosticError", { ctermfg = c.red })
	vim.api.nvim_set_hl(
		0,
		"DiagnosticVirtualTextError",
		{ ctermfg = c.light_red }
	)
	vim.api.nvim_set_hl(
		0,
		"DiagnosticUnderlineError",
		{ ctermfg = none, cterm = bold, bold = true }
	)

	vim.api.nvim_set_hl(0, "DiagnosticWarn", { ctermfg = c.yellow })
	vim.api.nvim_set_hl(
		0,
		"DiagnosticVirtualTextWarn",
		{ ctermfg = c.light_yellow }
	)
	vim.api.nvim_set_hl(
		0,
		"DiagnosticUnderlineWarn",
		{ ctermfg = none, cterm = bold, bold = true }
	)

	vim.api.nvim_set_hl(0, "DiagnosticInfo", { ctermfg = c.blue })
	vim.api.nvim_set_hl(
		0,
		"DiagnosticVirtualTextInfo",
		{ ctermfg = c.light_blue }
	)
	vim.api.nvim_set_hl(
		0,
		"DiagnosticUnderlineInfo",
		{ ctermfg = none, cterm = bold, bold = true }
	)

	vim.api.nvim_set_hl(0, "DiagnosticHint", { ctermfg = c.cyan })
	vim.api.nvim_set_hl(
		0,
		"DiagnosticVirtualTextHint",
		{ ctermfg = c.light_cyan }
	)
	vim.api.nvim_set_hl(
		0,
		"DiagnosticUnderlineHint",
		{ ctermfg = none, cterm = bold, bold = true }
	)

	vim.api.nvim_set_hl(
		0,
		"LspReferenceText",
		{ ctermfg = none, cterm = bold, bold = true }
	)
	vim.api.nvim_set_hl(
		0,
		"LspReferenceRead",
		{ ctermfg = none, cterm = bold, bold = true }
	)
	vim.api.nvim_set_hl(
		0,
		"LspReferenceWrite",
		{ ctermfg = none, cterm = bold, bold = true }
	)

	vim.api.nvim_set_hl(0, "NonText", { ctermfg = c.dark_gray })
	vim.api.nvim_set_hl(0, "LineNrAbove", { ctermfg = c.light_gray })
	vim.api.nvim_set_hl(0, "LineNrBelow", { ctermfg = c.light_gray })

	vim.api.nvim_set_hl(
		0,
		"DiffAdd",
		{ ctermfg = none, ctermbg = c.dark_green }
	)
	vim.api.nvim_set_hl(
		0,
		"DiffDelete",
		{ ctermfg = none, ctermbg = c.dark_red }
	)
	vim.api.nvim_set_hl(
		0,
		"DiffText",
		{ ctermfg = none, ctermbg = c.dark_yellow }
	)
end

highlights()
