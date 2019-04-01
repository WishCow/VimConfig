nnoremap <S-q> :tabclose<cr>
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>N :NERDTreeFind<CR>
nmap / /\v

nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h

nmap <leader>ff :FZF<cr>
nmap <leader>fb :CtrlPBuffer<cr>
nmap <leader>fm :CtrlPMRUFiles<cr>

nmap <F4> <Plug>CtrlSFPrompt

nmap ! <Plug>CtrlSFCwordExec

nmap /  <Plug>(incsearch-forward)\v
nmap ?  <Plug>(incsearch-backward)\v
nmap g/ <Plug>(incsearch-stay)\v
nmap n  <Plug>(incsearch-nohl-n)
nmap N  <Plug>(incsearch-nohl-N)
nmap *  <Plug>(incsearch-nohl-*)
nmap #  <Plug>(incsearch-nohl-#)
nmap g* <Plug>(incsearch-nohl-g*)
nmap g# <Plug>(incsearch-nohl-g#)

nnoremap zz yypk^i//<esc>j

nnoremap <tab> :tabnext<cr>
nnoremap <S-tab> :tabprev<cr>
nnoremap <C-u> <C-i>

map <F1> :NERDTreeToggle<cr>
map <Leader>w <Plug>(easymotion-wl)
map <Leader>e <Plug>(easymotion-el)
map <Leader>t <Plug>(easymotion-tl)
map <space> <Plug>(easymotion-jumptoanywhere)
map s <Plug>(easymotion-sl)
omap <space> <Plug>(easymotion-wl)

nmap <silent> <leader>k <Plug>(ale_next_wrap)
