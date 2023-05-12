vim.api.nvim_create_autocmd(
	{ "FileType" },
	{ pattern = { "tpp", "h_nolint" }, command = ":set filetype=cpp" }
)

vim.api.nvim_create_autocmd(
	{ "BufWritePre" },
	{ pattern = { "*.cpp", "*.h", "*.tpp" }, command = ":ClangFormat" }
)

vim.api.nvim_create_autocmd(
	{ "BufWritePost" },
	{ pattern = "*.lua", command = ":silent !stylua --column-width 80 %" }
)

vim.api.nvim_create_autocmd(
	{ "BufWritePost" },
	{ pattern = "*.rs", command = ":silent !rustfmt --edition 2021 %" }
)

function SetColorColumn()
	local path = vim.fn.expand("%:p")
	local type = vim.fn.expand("%:e")
	if string.find(path, "/Desktop/Coding/Transcoder") ~= nil then
		vim.opt.colorcolumn = "120"
	elseif string.find(path, "/Desktop/Coding/intel%-xe%-driver") ~= nil then
		vim.opt.colorcolumn = "120"
	elseif string.find(path, "/Desktop/Coding/management") ~= nil then
		vim.opt.colorcolumn = "120"
	elseif type == "rs" then
		vim.opt.colorcolumn = "100"
	else
		vim.opt.colorcolumn = "80"
	end
end

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { "*" },
	command = ":lua SetColorColumn()",
})

vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
	pattern = {
		"*.cpp",
		"*.h",
		"*.tpp",
		"*.h_nolint",
		"*.java",
		"*.ts",
		"*.py",
	},
	command = ":lua vim.lsp.buf.document_highlight()",
})
vim.api.nvim_create_autocmd({ "CursorMoved" }, {
	pattern = {
		"*.cpp",
		"*.h",
		"*.tpp",
		"*.h_nolint",
		"*.java",
		"*.ts",
		"*.py",
	},
	command = ":lua vim.lsp.buf.clear_references()",
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.cpp", "*.h", "*.tpp" },
	command = ":let g:clang_format#command = 'clang-format-10'",
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.java" },
	command = ":let g:clang_format#command = 'clang-format'",
})
