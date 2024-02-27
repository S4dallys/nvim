vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Themes
    use { "ribru17/bamboo.nvim" }
    use { "rktjmp/lush.nvim" }
    use { "rose-pine/neovim" }
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "vim-scripts/revolutions.vim" }
    use { "vim-scripts/jellybeans.vim" }
    use { "vim-scripts/wood.vim" }
    use { "andrewlockvi/dark_ocean.vim" }
    use { "calincru/peaksea.vim" }
    use {
        'olivercederborg/poimandres.nvim',
        config = function()
            require('poimandres').setup {
                -- leave this setup function empty for default config
                -- or refer to the configuration section
                -- for configuration options
            }
        end
    }

    -- Packer 
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use { 'nvim-treesitter/playground' }


    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { "nvim-lua/plenary.nvim" }
    }

    -- Fugitive
    use { "tpope/vim-fugitive" }
    use "sindrets/diffview.nvim"
    use 'nvim-tree/nvim-web-devicons'

    -- Trouble
    use "folke/trouble.nvim"

    -- Conflict Marker
    use { "rhysd/conflict-marker.vim" }

    -- Undotree
    use { "mbbill/undotree" }

    -- Emmet
    use { "mattn/emmet-vim" }

    -- leap
    use { "ggandor/leap.nvim" }

    -- scrollbar
    use("petertriho/nvim-scrollbar")

    -- eyeliner
    use {
        'jinh0/eyeliner.nvim',
        config = function()
            require'eyeliner'.setup {
                highlight_on_key = true, -- show highlights only after keypress
                dim = true              -- dim all other characters if set to true (recommended!)
            }
        end
    }

    -- LSP
    use "rafamadriz/friendly-snippets"
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
            {'saadparwaiz1/cmp_luasnip'},
        }
    }

    -- Nerdcommenter
    use 'preservim/nerdcommenter'

    -- Color Picker
    use ({"ziontee113/color-picker.nvim",
    config = function()
        require("color-picker")
    end,
    })

    -- css colors
    use 'norcalli/nvim-colorizer.lua'

    -- Vim be good :)
    use 'ThePrimeagen/vim-be-good'

end)
