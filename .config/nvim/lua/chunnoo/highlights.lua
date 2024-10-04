vim.g.colors_name = "onedark"
vim.o.background = "dark"

vim.api.nvim_set_hl(0, "DiagnosticError", { ctermfg = 204 })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { ctermfg = 168 })
vim.api.nvim_set_hl(
	0,
	"DiagnosticUnderlineError",
	{ ctermfg = none, cterm = bold, bold = true }
)

vim.api.nvim_set_hl(0, "DiagnosticWarn", { ctermfg = 180 })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { ctermfg = 137 })
vim.api.nvim_set_hl(
	0,
	"DiagnosticUnderlineWarn",
	{ ctermfg = none, cterm = bold, bold = true }
)

vim.api.nvim_set_hl(0, "DiagnosticInfo", { ctermfg = 39 })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { ctermfg = 32 })
vim.api.nvim_set_hl(
	0,
	"DiagnosticUnderlineInfo",
	{ ctermfg = none, cterm = bold, bold = true }
)

vim.api.nvim_set_hl(0, "DiagnosticHint", { ctermfg = 38 })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { ctermfg = 31 })
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

vim.api.nvim_set_hl(0, "DiffAdd", { ctermfg = none, ctermbg = 22 })
vim.api.nvim_set_hl(0, "DiffDelete", { ctermfg = none, ctermbg = 88 })
vim.api.nvim_set_hl(0, "DiffText", { ctermfg = none, ctermbg = 94 })
