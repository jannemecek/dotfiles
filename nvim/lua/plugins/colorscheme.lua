return {
  { "tjdevries/colorbuddy.nvim" },
  { "miloshadzic/hemisu.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "hemisu",
    },
  },
}
