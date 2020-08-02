nnoremap <S-q> :tabclose<cr>
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>N :NERDTreeFind<CR>
nmap <leader>q :tabonly<CR>
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
vmap ! <Plug>CtrlSFVwordExec

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
map <F2> :tabnew ~/.vim/configs/plugins.vimrc<cr>
map <Leader>w <Plug>(easymotion-wl)
map <Leader>e <Plug>(easymotion-el)
map <Leader>t <Plug>(easymotion-tl)
map s <Plug>(easymotion-sl)
omap <space> <Plug>(easymotion-wl)

nmap <silent> <leader>k <Plug>(ale_next_wrap)
