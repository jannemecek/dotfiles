return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'lewis6991/impatient.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-live-grep-raw.nvim',
        'nvim-lua/popup.nvim'
      }
    }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use 'tjdevries/colorbuddy.nvim'
  use 'miloshadzic/hemisu.nvim'
  use 'Mofiqul/dracula.nvim'

  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  use 'nvim-lua/lsp_extensions.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  --- For luasnip users
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use 'hoob3rt/lualine.nvim'

  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
  }

  use 'tpope/vim-rails'

  use 'TimUntersberger/neogit'
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
  }

  use 'tpope/vim-surround'
  use 'windwp/nvim-autopairs'

  use 'janko-m/vim-test'

  use 'numToStr/Comment.nvim'
end)
