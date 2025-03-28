local lualine = require("lualine")

local c = require("chunnoo.colors")

local lsp_status = require("lsp-status")

local function custom_lsp_status(bufnr)
	local progress = lsp_status.status_progress()
	if progress == "" then
		return "✓"
	end
	return progress
end

local normal_theme = {
	a = { bg = c.gray, fg = c.black },
	b = { bg = c.dark_gray, fg = c.white },
	c = { bg = c.darker_gray, fg = c.white },
}

local theme = {
	normal = normal_theme,
	insert = normal_theme,
	visual = normal_theme,
	replace = normal_theme,
	command = normal_theme,
	inactive = {
		a = { ctermbg = c.darker_gray, ctermfg = c.light_gray },
		b = { ctermbg = c.darker_gray, ctermfg = c.light_gray },
		c = { ctermbg = c.darker_gray, ctermfg = c.light_gray },
	},
}

lualine.setup({
	options = {
		icons_enabled = false,
		theme = theme,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = {},
		lualine_b = {
			{ "branch", color = { fg = c.white, bg = c.dark_gray } },
			{
				"diff",
				diff_color = {
					added = { fg = c.green, bg = c.dark_gray },
					modified = { fg = c.yellow, bg = c.dark_gray },
					removed = { fg = c.red, bg = c.dark_gray },
				},
			},
			{
				"diagnostics",
				diagnostics_color = {
					error = { fg = c.red, bg = c.dark_gray },
					warn = { fg = c.light_yellow, bg = c.dark_gray },
					hint = { fg = c.blue, bg = c.dark_gray },
					info = { fg = c.cyan, bg = c.dark_gray },
				},
			},
		},
		lualine_c = { { "filename", path = 1 } },
		lualine_x = { custom_lsp_status },
		lualine_y = { "progress", "location" },
		lualine_z = {},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {
			{
				"diff",
				diff_color = {
					added = {
						bg = c.darker_gray,
						fg = c.green,
						underline = false,
					},
					modified = { bg = c.darker_gray, fg = c.yellow },
					removed = { bg = c.darker_gray, fg = c.red },
				},
			},
			{
				"diagnostics",
				diagnostics_color = {
					error = { bg = c.darker_gray, fg = c.red },
					warn = { bg = c.darker_gray, fg = c.light_yellow },
					hint = { bg = c.darker_gray, fg = c.blue },
					info = { bg = c.darker_gray, fg = c.cyan },
				},
			},
		},
		lualine_c = { { "filename", path = 1 } },
		lualine_x = { "location" },
		lualine_y = { "progress" },
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})
