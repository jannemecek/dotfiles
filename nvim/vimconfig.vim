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
set foldmethod=syntax
set nofoldenable
set termguicolors
set signcolumn=yes
syntax on
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

" How to exit vim terminal > How to exit vim
tnoremap <leader><Esc> <C-\><C-n>

nnoremap <leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>F <cmd>lua require('telescope.builtin').live_grep()<cr>
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

nnoremap <leader>g :Neogit<CR>
nnoremap <leader>c :Neogit commit<CR>

vnoremap <leader>p "_dP
vnoremap <leader>y "+y

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Auto
autocmd BufWritePre * :%s/\s\+$//e

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
