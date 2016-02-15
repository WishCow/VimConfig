map <A-l> :tabnext<cr>
map <A-h> :tabprevious<cr>
map <A-j> :bnext<cr>
map <A-k> :bprev<cr>
imap <A-l> <esc>:tabnext<cr>i
imap <A-h> <esc>:tabprevious<cr>i
imap <A-j> <esc>:bnext<cr>i
imap <A-k> <esc>:bprev<cr>i
map <S-q> :tabclose<cr>
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
map <leader>n :NERDTreeTabsToggle<CR>
map <leader>N :NERDTreeTabsFind<CR>
nnoremap / /\v
vnoremap / /\v
map <A-1> :tabnext 1<cr>
map <A-2> :tabnext 2<cr>
map <A-3> :tabnext 3<cr>
map <A-4> :tabnext 4<cr>
map <A-5> :tabnext 5<cr>
map <A-6> :tabnext 6<cr>
map <A-7> :tabnext 7<cr>
map <A-8> :tabnext 8<cr>
map <A-9> :tabnext 9<cr>
map <space> <Plug>(easymotion-w)
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
map <leader>L <Plug>(easymotion-bd-jk)

map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h

map <leader>ff :CtrlP<cr>
map <leader>fF :ClearCtrlPCache<cr>:CtrlP<cr>
map <leader>fb :CtrlPBuffer<cr>
map <leader>fm :CtrlPMRUFiles<cr>

map <F2> :YRShow<cr>
map <F3> :GundoToggle<cr>
nmap <F4> <Plug>CtrlSFPrompt
nmap <F5> :GitGutterSignsToggle<cr>

nmap ! <Plug>CtrlSFCwordExec
vmap * <Plug>CtrlSFVwordExec

map /  <Plug>(incsearch-forward)\v
map ?  <Plug>(incsearch-backward)\v
map g/ <Plug>(incsearch-stay)\v
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
noremap 0 ^

nnoremap zz yypk^i//<esc>j
