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
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim"
    },
    config = function ()
      -- Unless you are still migrating, remove the deprecated commands from v1.x
      vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

      -- If you want icons for diagnostic errors, you'll need to define them somewhere:
      vim.fn.sign_define("DiagnosticSignError",
        {text = " ", texthl = "DiagnosticSignError"})
      vim.fn.sign_define("DiagnosticSignWarn",
        {text = " ", texthl = "DiagnosticSignWarn"})
      vim.fn.sign_define("DiagnosticSignInfo",
        {text = " ", texthl = "DiagnosticSignInfo"})
      vim.fn.sign_define("DiagnosticSignHint",
        {text = "", texthl = "DiagnosticSignHint"})
      -- NOTE: this is changed from v1.x, which used the old style of highlight groups
      -- in the form "LspDiagnsticsSignWarning"
    end
}

  use 'tpope/vim-rails'

  use 'kdheepak/lazygit.nvim'
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

  use 'github/copilot.vim'

  use 'akinsho/toggleterm.nvim'
end)
