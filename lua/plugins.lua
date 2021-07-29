return require('packer').startup(function(use)

    -- https://github.com/wbthomason/packer.nvim
    use 'wbthomason/packer.nvim'

    -- https://github.com/nvim-treesitter/nvim-treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('treesitter')
        end
    }

    -- https://github.com/folke/tokyonight.nvim
    use {
        'folke/tokyonight.nvim',
        config = function()
            require('colorscheme')
        end
    }

    -- https://github.com/nvim-telescope/telescope.nvim
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/popup.nvim'},
            {'nvim-lua/plenary.nvim'}
        },
        config = function()
            require('telescope')
        end
    }

    -- https://github.com/neovim/nvim-lspconfig
    use 'neovim/nvim-lspconfig'

    -- https://github.com/glepnir/lspsaga.nvim
    use 'glepnir/lspsaga.nvim'

    -- https://github.com/hrsh7th/nvim-compe
    use {
        'hrsh7th/nvim-compe',
        config = function()
            require('completion')
        end
    }

    -- https://github.com/windwp/nvim-autopairs
    use {
        'windwp/nvim-autopairs',
        config = function()
            require('autopairs')
        end
    }

    -- https://github.com/tpope/vim-surround
    use 'tpope/vim-surround'

    -- https://github.com/preservim/nerdcommenter
    use {
        'preservim/nerdcommenter',
        config = function()
            vim.cmd('source ~/.config/nvim/vimscript/nerdcommenter.vim')
        end
    }

    -- https://github.com/rhysd/vim-clang-format
    use {
        'rhysd/vim-clang-format',
        config = function()
            vim.cmd('source ~/.config/nvim/vimscript/clang-format.vim')
        end
    }

    -- https://github.com/hoob3rt/lualine.nvim
    use {
        'hoob3rt/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require('statusline')
        end
    }

    -- https://github.com/RRethy/vim-hexokinase
    use {
        'rrethy/vim-hexokinase',
        run = 'make hexokinase'
    }

    -- https://github.com/glepnir/dashboard-nvim
    use {
        'glepnir/dashboard-nvim',
        config = function()
            require('dashboard')
        end
    }

    -- https://github.com/folke/which-key.nvim
    use {
        'folke/which-key.nvim',
        config = function()
            require('whichkey')
        end
    }

    -- https://github.com/dag/vim-fish
    use 'dag/vim-fish'

end)
