vim.cmd [[ packadd packer.nvim ]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use 'nvim-lua/plenary.nvim'

    use 'neovim/nvim-lspconfig'
    use 'joshdick/onedark.vim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/playground'
    use 'nvim-telescope/telescope.nvim'
    use 'rhysd/vim-clang-format'
    use 'mfukar/robotframework-vim'
    use 'prettier/vim-prettier'
    use 'psf/black'

    use 'lewis6991/gitsigns.nvim'

    use 'mfussenegger/nvim-jdtls'
end)
