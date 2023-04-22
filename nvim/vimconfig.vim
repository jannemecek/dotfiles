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
nnoremap <leader>h <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap <leader>s <cmd>exe v:count1 . "TermExec cmd='yarn start'"<cr>

nnoremap <C-n> :Neotree toggle<cr>

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>

nnoremap <leader>g :Neogit<CR>
nnoremap <leader>c :Neogit commit<CR>
nnoremap <leader>G :LazyGit<CR>

nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>

xnoremap <leader>p "_dP

nnoremap <leader>y "+y
vnoremap <leader>y "+y
nmap <leader>Y "+Y

nnoremap <leader>d "_d
vnoremap <leader>d "_d

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

au BufNewFile,BufRead *.sol setfiletype solidity

" Auto
autocmd BufWritePre * :%s/\s\+$//e

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
