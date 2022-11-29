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

function SetColorColumn()
	local path = vim.fn.expand("%:p")
	if string.find(path, "/Desktop/Coding/Transcoder") ~= nil then
		vim.opt.colorcolumn = "120"
	elseif string.find(path, "/Desktop/Coding/intel%-xe%-driver") ~= nil then
		vim.opt.colorcolumn = "120"
	elseif string.find(path, "/Desktop/Coding/management") ~= nil then
		vim.opt.colorcolumn = "120"
	else
		vim.opt.colorcolumn = "80"
	end
end

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { "*" },
	command = ":lua SetColorColumn()",
})

vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
	pattern = { "*.cpp", "*.h", "*.tpp", "*.h_nolint", "*.java", "*.ts" },
	command = ":lua vim.lsp.buf.document_highlight()",
})
vim.api.nvim_create_autocmd({ "CursorMoved" }, {
	pattern = { "*.cpp", "*.h", "*.tpp", "*.h_nolint", "*.java", "*.ts" },
	command = ":lua vim.lsp.buf.clear_references()",
})
