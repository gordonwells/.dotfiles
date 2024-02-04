-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
    function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        -- Better status line
        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }

        -- Fuzzy finder
        use {
            'nvim-telescope/telescope.nvim', branch = '0.1.x',
            -- or                            , branch = '0.1.x',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }

        -- Color theme
        -- use({
        --     'ellisonleao/gruvbox.nvim',
        --     as = 'gruvbox',
        -- })
        use 'navarasu/onedark.nvim'

        use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

        -- Hotkey those files
        use('theprimeagen/harpoon')

        -- Where has this been all my life
        use('mbbill/undotree')

        -- Git helper
        use('tpope/vim-fugitive')

        -- Git blame, hunk staging etc
        -- TODO: configure this
        use('lewis6991/gitsigns.nvim')

        -- LSP setup
        use {
            'VonHeikemen/lsp-zero.nvim',
            requires = {
                -- LSP Support
                { 'neovim/nvim-lspconfig' },
                { 'williamboman/mason.nvim' },
                { 'williamboman/mason-lspconfig.nvim' },

                -- Autocompletion
                { 'hrsh7th/nvim-cmp' },
                { 'hrsh7th/cmp-buffer' },
                { 'hrsh7th/cmp-path' },
                { 'saadparwaiz1/cmp_luasnip' },
                { 'hrsh7th/cmp-nvim-lsp' },
                { 'hrsh7th/cmp-nvim-lua' },

                -- Snippets
                { 'l3mon4d3/luasnip' },
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
        }

        -- Better substitution for upper and lower at the same time... and more!
        use 'tpope/vim-abolish'

        use 'nvim-tree/nvim-tree.lua'

        -- Lanuage pack for better syntax and indent handling
        use { 'sheerun/vim-polyglot' }

        -- For enabling formatting
        use { 'jose-elias-alvarez/null-ls.nvim',
            requires = {
                "nvim-lua/plenary.nvim",
            } }
    end,
    config = {
        display = {
            open_fn = require('packer.util').float,
        }
    }
})
