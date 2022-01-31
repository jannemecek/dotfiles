set scrolloff=8
set number
set relativenumber
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set wildmenu
set wildmode=longest:list,full
set wildignore=*/tmp/*,*.so,*.swp,*.zip,vendor/bundle/**,*/bin/*,node_modules
" Change the way splits open by default
set splitbelow
set splitright

call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Colors
" Plug 'ayu-theme/ayu-vim'
Plug 'tjdevries/colorbuddy.nvim'
" Plug 'miloshadzic/hemisu.nvim'
Plug 'noahfrederick/vim-hemisu'
Plug 'Mofiqul/dracula.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }

Plug 'tpope/vim-rails'

Plug 'janko-m/vim-test'

" Plug 'gfontenot/vim-xcode'

Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'kyazdani42/nvim-tree.lua'

call plug#end()

" set termguicolors
colorscheme hemisu

set completeopt=menu,menuone,noselect

" Remaps
let mapleader = " "

nnoremap Q :quit<CR>
nnoremap W :write<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <silent> vv <C-w>v

nnoremap <leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>g <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>h <cmd>lua require('telescope.builtin').help_tags()<cr>p
nnoremap <leader>p <cmd>lua require('telescope.builtin').treesitter()<cr>p

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>

" vnoremap <leader>p "_dP
vnoremap <leader>y "+y

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Auto
autocmd BufWritePre * :%s/\s\+$//e

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
