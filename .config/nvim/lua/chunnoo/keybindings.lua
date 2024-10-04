local HOME = os.getenv("HOME")
local telescope = require("telescope.builtin")

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("i", "Jk", "<ESC>")
vim.keymap.set("i", "JK", "<ESC>")

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

-- General
vim.keymap.set("n", "<leader>cc", ":cclose<CR>")
vim.keymap.set("n", "<leader>z", ":resize<CR>")

-- Telescope
vim.keymap.set("n", "<C-P>", telescope.git_files)
vim.keymap.set("n", "<leader>ff", telescope.find_files)
vim.keymap.set("n", "<leader>tr", telescope.resume)
vim.keymap.set("n", "<leader>gr", function()
	telescope.lsp_references({
		initial_mode = "normal",
		trim_text = true,
		include_current_line = true,
		-- path_display = { "shorten" },
		fname_width = 80,
	})
end)
vim.keymap.set("n", "<leader>ic", telescope.lsp_incoming_calls)
vim.keymap.set("n", "<leader>oc", telescope.lsp_outgoing_calls)
vim.keymap.set("n", "<leader>sgr", telescope.grep_string)
vim.keymap.set("n", "<leader>lg", telescope.live_grep)
vim.keymap.set("n", "<leader>gs", telescope.git_status)
vim.keymap.set("n", "<leader>dws", telescope.lsp_dynamic_workspace_symbols)
vim.keymap.set("n", "<leader>dg", telescope.diagnostics)
vim.keymap.set("n", "<leader>bu", function()
	telescope.buffers({
		initial_mode = "insert",
		path_display = { "shorten" },
	})
end)

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { silent = true })
vim.keymap.set("n", "<C-k>", vim.lsp.buf.hover, { silent = true })
vim.keymap.set("n", "<leader>vh", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>sd", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next)

-- Diagnostics
vim.keymap.set(
	"n",
	"<leader>dt",
	(function()
		local showingDiagnostics = true
		return function()
			if showingDiagnostics then
				-- vim.diagnostic.hide()
				vim.diagnostic.config({ virtual_text = false })
			else
				-- vim.diagnostic.show()
				vim.diagnostic.config({ virtual_text = true })
			end
			showingDiagnostics = not showingDiagnostics
		end
	end)()
)

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
vim.keymap.set("n", "<leader>bl", ":Git blame<CR>")

-- Debugging
vim.keymap.set("n", "<leader>tc", function()
	require("jdtls").test_class()
end)
vim.keymap.set("n", "<leader>tf", function()
	require("jdtls").test_nearest_method()
end)
vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<leader>dr", ":DapToggleRepl<CR>")
vim.keymap.set("n", "<leader>si", ":DapStepInto<CR>")
vim.keymap.set("n", "<leader>so", ":DapStepOver<CR>")
vim.keymap.set("n", "C-j", require("dap.ui.widgets").hover)
vim.keymap.set("n", "<leader>dc", require("dap").run_to_cursor)
vim.keymap.set(
	"n",
	"<leader>ds",
	require("dap.ui.widgets").sidebar(require("dap.ui.widgets").scopes).open
)
