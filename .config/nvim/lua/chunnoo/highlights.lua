vim.g.colors_name = "onedark"
vim.o.background = "dark"

vim.api.nvim_set_hl(
	0,
	"DiagnosticUnderlineError",
	{ ctermfg = none, cterm = bold, bold = true }
)
vim.api.nvim_set_hl(
	0,
	"DiagnosticUnderlineWarn",
	{ ctermfg = none, cterm = bold, bold = true }
)
vim.api.nvim_set_hl(
	0,
	"DiagnosticUnderlineInfo",
	{ ctermfg = none, cterm = bold, bold = true }
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

vim.api.nvim_set_hl(0, "NonText", { ctermfg = 238 })
vim.api.nvim_set_hl(0, "LineNrAbove", { ctermfg = 242 })
vim.api.nvim_set_hl(0, "LineNrBelow", { ctermfg = 242 })
