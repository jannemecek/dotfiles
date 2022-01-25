local cmd = vim.cmd

-- Temporarily source the vim part
cmd('source ~/.config/nvim/vimconfig.vim')

require 'hemisu'

require'config/lsp'
require'config/lualine'
require'config/telescope'

require'nvim-tree'.setup()
