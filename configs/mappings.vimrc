nnoremap <S-q> :tabclose<cr>
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>N :NERDTreeFind<CR>
nmap / /\v
nmap <space> <Plug>(easymotion-w)
nmap <leader>j <Plug>(easymotion-j)
nmap <leader>k <Plug>(easymotion-k)
nmap <leader>L <Plug>(easymotion-bd-jk)

nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h

nmap <leader>ff :CtrlP<cr>
nmap <leader>fF :ClearCtrlPCache<cr>:CtrlP<cr>
nmap <leader>fb :CtrlPBuffer<cr>
nmap <leader>fm :CtrlPMRUFiles<cr>

nmap <F2> :YRShow<cr>
nmap <F4> <Plug>CtrlSFPrompt
nmap <F5> :GitGutterSignsToggle<cr>

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

nnoremap - :NERDTreeFind<cr>
map <Leader><Leader> <Plug>(easymotion-prefix)
map ) <Plug>(easymotion-sn)
