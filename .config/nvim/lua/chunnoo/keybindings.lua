local HOME = os.getenv("HOME")
local telescope = require("telescope.builtin")

vim.keymap.set("i", "jk", "<ESC>")

-- Config
vim.keymap.set(
	"n",
	"<leader>ev",
	":vs " .. HOME .. "/.config/nvim/init.lua<CR>"
)
vim.keymap.set(
	"n",
	"<leader>sv",
	":source " .. HOME .. "/.config/nvim/init.lua<CR>"
)
vim.keymap.set("n", "<leader>ed", function()
	telescope.find_files({
		search_dirs = { HOME .. "/.config/nvim/lua/" },
		hidden = true,
	})
end)

-- Telescope
vim.keymap.set("n", "<C-p>", telescope.git_files)
vim.keymap.set("n", "<leader>ff", telescope.find_files)
vim.keymap.set("n", "<leader>tr", telescope.resume)
vim.keymap.set("n", "<leader>gr", function()
	telescope.lsp_references({
		initial_mode = "normal",
		trim_text = true,
		include_current_line = true,
		path_display = { "shorten" },
		fname_width = 80,
	})
end)
vim.keymap.set("n", "<leader>ic", telescope.lsp_incoming_calls)
vim.keymap.set("n", "<leader>oc", telescope.lsp_outgoing_calls)
vim.keymap.set("n", "<leader>sgr", telescope.grep_string)
vim.keymap.set("n", "<leader>lg", telescope.live_grep)
vim.keymap.set("n", "<leader>gs", telescope.git_status)
vim.keymap.set("n", "<leader>ds", telescope.lsp_dynamic_workspace_symbols)

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { silent = true })
vim.keymap.set("n", "<C-k>", vim.lsp.buf.hover, { silent = true })
vim.keymap.set("n", "<leader>vh", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>sd", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next)

-- Notes
vim.keymap.set("n", "<leader>tn", function()
	local fileName = vim.fn.expand("%")
	local row, col = unpack(vim.api.nvim_win_get_cursor(0))
	local noteFile = io.open(".notes", "a")
	if noteFile then
		noteFile:write(
			fileName
				.. ":"
				.. row
				.. ":"
				.. col
				.. ": "
				.. vim.fn.input("Note: ")
				.. "\n"
		)
		noteFile:close()
	end
end)

-- :lua vim.api.nvim_buf_set_extmark(0, vim.api.nvim_create_namespace('test'), 69, 3, {virt_text = {{"asdf", "Comment"}}})
-- :h nvim_buf_clear_namespace()

vim.keymap.set("n", "<leader>gn", function()
	vim.cmd('cgetexpr system("cat .notes")')
	telescope.quickfix({
		initial_mode = "normal",
		trim_text = true,
		path_display = { "shorten" },
		fname_width = 80,
	})
end)

vim.keymap.set("n", "<leader>en", ":e .notes<CR>")

-- Git
vim.keymap.set("n", "<leader>bl", ":Gitsigns blame_line<CR>")
