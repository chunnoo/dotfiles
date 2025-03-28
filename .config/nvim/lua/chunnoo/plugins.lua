vim.cmd([[ packadd packer.nvim ]])

return require("packer").startup(function()
	use("wbthomason/packer.nvim")

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	use("nvim-lua/plenary.nvim")

	use("neovim/nvim-lspconfig")
	use("onsails/lspkind.nvim")
	use("nvim-lua/lsp-status.nvim")

	use("nvim-treesitter/nvim-treesitter")
	use("nvim-treesitter/playground")
	use("nvim-treesitter/nvim-treesitter-context")

	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-ui-select.nvim")
	use("nvim-telescope/telescope-live-grep-args.nvim")

	use("rhysd/vim-clang-format")
	use("mfukar/robotframework-vim")
	use("prettier/vim-prettier")
	use("psf/black")

	use("github/copilot.vim")

	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	use("tpope/vim-fugitive")

	use("mfussenegger/nvim-jdtls")
	use("mfussenegger/nvim-dap") -- Look into telescope-dap
end)
