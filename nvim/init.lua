require 'plugins'

local opt = vim.opt
local cmd = vim.cmd
local g = vim.g
local o = vim.o
local wo = vim.wo
local bo = vim.bo

g.mapleader = ' '

opt.termguicolors = true
g.syntax = true

opt.completeopt = 'menu,menuone,noselect'

-- Temporarily source the vim part
cmd('source ~/.config/nvim/vimconfig.vim')

opt.autoindent = true
opt.autoread = true
opt.encoding = 'utf-8'
opt.expandtab = true
opt.foldmethod = 'syntax'
opt.ignorecase = true
opt.incsearch = true
opt.inccommand = 'split'
opt.laststatus = 3
opt.list = true
opt.listchars = { tab = "▸ ", trail = "▫" }
opt.mouse = 'a'
opt.foldenable = false
opt.ruler = true
opt.scrolloff = 8
opt.shiftwidth = 2
opt.showcmd = true
opt.smartcase = true
opt.smartindent = true
opt.softtabstop = 2
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 2
opt.wildmenu = true
opt.wildmode = 'longest,list,full'
opt.wildignore = '*/tmp/*,*.so,*.swp,*.zip,vendor/bundle/**,*/bin/*,node_modules'
wo.signcolumn = 'yes'
wo.number = true
wo.relativenumber = true

require'config/lsp'
require'config/lualine'
require'config/telescope'
require'config/neotree'
require'config/toggleterm'
require'config/comment'
require'hemisu'
require'neogit'.setup {}
require'nvim-autopairs'.setup{}
require'gitsigns'.setup()

vim.g.copilot_filetypes = {
  ['*'] = true,
  ['TelescopePrompt'] = false
}
