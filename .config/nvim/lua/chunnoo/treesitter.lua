if not pcall(require, "nvim-treesitter.configs") then
	return
end

local ts = require("nvim-treesitter")
local tsconfig = require("nvim-treesitter.configs")

require("nvim-treesitter.configs").setup({ highlight = { enable = true } })

vim.cmd("autocmd BufRead,BufNewFile *.tpp set filetype=cpp")

vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"

require("treesitter-context").setup({
	enable = true,
	max_lines = 5,
	min_window_height = 5,
	line_numbers = true,
	multiline_threshold = 1,
	trim_scope = "outer",
	mode = "topline",
	separator = nil,
	zindex = 20,
	on_attach = nil,
})
