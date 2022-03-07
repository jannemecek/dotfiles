require 'plugins'

local cmd = vim.cmd

-- Temporarily source the vim part
cmd('source ~/.config/nvim/vimconfig.vim')

require'config/lsp'
require'config/lualine'
require'config/telescope'
require'config/comment'
require'hemisu'

require'nvim-tree'.setup()

local neogit = require('neogit')
neogit.setup {}
