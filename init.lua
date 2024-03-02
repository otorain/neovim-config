
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

require("lazy").setup({
    -- Ruby auto complete 'end' statement (https://github.com/RRethy/nvim-treesitter-endwise)
    "RRethy/nvim-treesitter-endwise",

    -- Intelligent indent (https://github.com/godlygeek/tabular)
    "godlygeek/tabular",

    -- Ruby On Rails support (https://github.com/tpope/vim-rails)
    "tpope/vim-rails",

    -- Ruby support (https://github.com/vim-ruby/vim-ruby)
    "vim-ruby/vim-ruby",

    -- Telescope (https://github.com/nvim-telescope/telescope.nvim)
    { 
        "nvim-telescope/telescope.nvim",
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    
    -- File tree (https://github.com/nvim-tree/nvim-tree.lua)
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    
    -- Git status 
    "lewis6991/gitsigns.nvim",
    
    -- Ruby slim template support (https://github.com/slim-template/vim-slim)
    -- "slim-template/vim-slim",
    
    -- Theme (https://github.com/ellisonleao/gruvbox.nvim)
    "ellisonleao/gruvbox.nvim",
    
    -- Auto complete brackets (https://github.com/windwp/nvim-autopairs)
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    },
    
    -- HTML emmet (https://github.com/mattn/emmet-vim)
    'mattn/emmet-vim',

    -- Status line (https://github.com/nvim-lualine/lualine.nvim)
    'nvim-lualine/lualine.nvim',

    -- Formatter (https://github.com/mhartington/formatter.nvim)
    'mhartington/formatter.nvim',

    -- Syntax highlight (https://github.com/nvim-treesitter/nvim-treesitter)
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function () 
          local configs = require("nvim-treesitter.configs")

          configs.setup({
              ensure_installed = { "c", "lua", "css", "scss", "vim", "ruby", "vimdoc", "query", "elixir", "heex", "javascript", "html", "go", "rust", "dart" },
              sync_install = false,
              highlight = { enable = true },
              endwise = { enable = true },
              indent = { enable = true },  
            })
        end
    },
    
    -- tab (https://github.com/akinsho/bufferline.nvim)
    'akinsho/bufferline.nvim',

    -- Ace jump alternative (https://github.com/hadronized/hop.nvim)
    'phaazon/hop.nvim',
    
    -- Auto save (https://github.com/pocco81/auto-save.nvim)
    'pocco81/auto-save.nvim',

    -- Indent line (https://github.com/lukas-reineke/indent-blankline.nvim)
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }
})

require('global')
require('options')
require('config.telescope')
require('config.neovim-tree')
require('config.gitsigns')
require('config.lualine')
require('config.formatter')
require('config.bufferline')
require('config.hop')
require('themes.gruvbox')
