local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        build = "make install_jsregexp"
    },
    "eandrju/cellular-automaton.nvim",
    "rafamadriz/friendly-snippets",
    "hrsh7th/nvim-cmp",
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-nvim-lsp",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "onsails/lspkind-nvim",
    "rhysd/conflict-marker.vim",
    "sindrets/diffview.nvim",
    "mattn/emmet-vim",
    {
        'jinh0/eyeliner.nvim',
        config = function()
            require'eyeliner'.setup {
                highlight_on_key = true,
                dim = true
            }
        end
    },
    "nvim-lua/plenary.nvim",
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    {
        "echasnovski/mini.files",
        version = false
    },
    "preservim/nerdcommenter",
    "norcalli/nvim-colorizer.lua",
    "petertriho/nvim-scrollbar",
    {
        "nvim-treesitter/nvim-treesitter",
    },
    "nvim-tree/nvim-web-devicons",
    {
        "olivercederborg/poimandres.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require('poimandres').setup { }
        end,
    },
    "wellle/targets.vim",
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = { }
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = { },
    },
    "mbbill/undotree",
    "ThePrimeagen/vim-be-good",
    "tpope/vim-fugitive",
    "tpope/vim-surround",
    {
        "folke/drop.nvim",
        event = "VimEnter",
        config = function()
            require("drop").setup({
                theme = "snow", -- "leaves", "snow", "stars", "xmas", "spring", "summer"
                max = 40,
                interval = 150,
                screensaver = 1000 * 180, -- 60 * 5,
                filetypes = { "dashboard", "alpha", "starter" },
            })
        end,
    },
    {
        'goolord/alpha-nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            'nvim-lua/plenary.nvim'
        },
        config = function()
            require("themes.alpha-config")
        end
    },
}

local opts = {}

require("lazy").setup(plugins, opts)
