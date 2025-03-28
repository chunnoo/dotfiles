-- Should be called once before starting any server
require("lsp-status").register_progress()

vim.o.completeopt = "noinsert,menuone,noselect"

local lsp = require("lspconfig")

lsp.clangd.setup({
	cmd = { "clangd-11" },
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "h_nolint", "tpp" },
})

lsp.cmake.setup({})

if vim.env.VIM_RUST_TARGET == "wasm" then
	lsp.rust_analyzer.setup({
		settings = {
			["rust-analyzer"] = {
				-- trace = "verbose",
				diagnostics = {
					enable = true,
				},
				cargo = {
					-- allFeatures = true,
					-- features = { "app/ibc-ui" },
					target = "wasm32-unknown-unknown",
					-- targetDir = true,
					buildScripts = {
						enable = false,
					},
				},
				check = {
					-- allFeature = true,
					targets = "wasm32-unknown-unknown",
					workspace = false,
					-- overrideCommand = {
					-- 	"cargo check --target wasm32-unknown-unknown --message-format=json -p ibc-ui",
					-- },
					-- invocationLocation = "root",
				},
				checkOnSave = {
					-- allTargets = false,
					-- allFeature = true,
					command = "clippy",
					extraArgs = { "--target", "wasm32-unknown-unknown" },
				},
				procMacro = {
					enable = true,
				},
			},
		},
	})
else
	lsp.rust_analyzer.setup({
		settings = {
			["rust-analyzer"] = {
				diagnostics = {
					enable = true,
				},
				cargo = {
					-- allFeatures = true,
				},
				check = {
					-- allFeature = true,
				},
				checkOnSave = {
					command = "clippy",
				},
				procMacro = {
					enable = true,
				},
			},
		},
	})
end

lsp.wgsl_analyzer.setup({})

lsp.bashls.setup({})

lsp.hls.setup({})

lsp.eslint.setup({
	settings = { rulesCustomizations = { { rule = "*", severity = "warn" } } },
})
lsp.html.setup({
	cmd = { "html-languageserver", "--stdio" },
	init_options = { provideFormatter = false },
})

lsp.css_variables.setup({})
lsp.cssls.setup({})

-- tsserver is deprecated, use ts_ls instead
-- lsp.tsserver.setup({})

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

lsp.yamlls.setup({
	settings = { yaml = { customTags = { "!reference sequence" } } },
})
