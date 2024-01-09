vim.o.completeopt = "noinsert,menuone,noselect"

local lsp = require("lspconfig")

lsp.clangd.setup({
	cmd = { "clangd-11" },
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "h_nolint", "tpp" },
})

lsp.cmake.setup({})

-- lsp.rls.setup({
-- 	settings = {
-- 		unstable_features = true,
-- 		build_on_save = false,
-- 		all_features = true,
-- 	},
-- })

require("lspconfig").rust_analyzer.setup({
	settings = {
		["rust-analyzer"] = {
			diagnostics = {
				enable = false,
			},
			checkOnSave = {
				command = "clippy",
			},
		},
	},
})

lsp.bashls.setup({})

lsp.hls.setup({})

lsp.eslint.setup({
	settings = { rulesCustomizations = { { rule = "*", severity = "warn" } } },
})
lsp.html.setup({
	cmd = { "html-languageserver", "--stdio" },
	init_options = { provideFormatter = false },
})

lsp.tsserver.setup({})

lsp.zls.setup({})

lsp.pylsp.setup({
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					ignore = { "W391" },
					maxLineLength = 120,
				},
			},
		},
	},
})

lsp.robotframework_ls.setup({})

-- lsp.jdtls.setup({
-- 	cmd = { "jdtls" },
-- 	root_dir = function(fname)
-- 		return require("lspconfig").util.root_pattern(
-- 			"pom.xml",
-- 			"gradle.build",
-- 			".git"
-- 		)(fname) or vim.fn.getcwd()
-- 	end,
-- })

lsp.lua_ls.setup({
	cmd = { "/home/mathias/temp/lua-language-server/bin/lua-language-server" },
	settings = {
		Lua = {
			runtime = { version = "LuaJIT" },
			diagnostics = { globals = { "vim" } },
			workspace = { library = vim.api.nvim_get_runtime_file("", true) },
			telemetry = { enable = false },
		},
	},
})

lsp.sqlls.setup({})

lsp.arduino_language_server.setup({})
