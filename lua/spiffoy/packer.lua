-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Better status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Color theme
    -- use({
    --     'ellisonleao/gruvbox.nvim',
    --     as = 'gruvbox',
    -- })
    use 'navarasu/onedark.nvim'

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- Hotkey those files
    use('theprimeagen/harpoon')

    -- Where has this been all my life
    use('mbbill/undotree')

    -- Git helper
    use('tpope/vim-fugitive')

    -- LSP setup
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'l3mon4d3/luasnip'},
        }
    }

    -- Need that DAP
    use 'mfussenegger/nvim-dap'

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Code diagnostics
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- Better substitution for upper and lower at the same time... and more!
    use 'tpope/vim-abolish'

    -- Improve netrw (because honestly it's garbage)
    use 'tpope/vim-vinegar'

    -- File tree (seriously why is netrw the default)
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = { 
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    }

    -- Lanuage pack for better syntax and indent handling
    use {'sheerun/vim-polyglot'}

end)
