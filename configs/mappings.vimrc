nnoremap <S-q> :tabclose<cr>
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
nnoremap <leader>n :NERDTreeTabsToggle<CR>
nnoremap <leader>N :NERDTreeTabsFind<CR>
nnoremap / /\v
nmap <space> <Plug>(easymotion-w)
nmap <leader>j <Plug>(easymotion-j)
nmap <leader>k <Plug>(easymotion-k)
nmap <leader>L <Plug>(easymotion-bd-jk)

nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h

nnoremap <leader>ff :CtrlP<cr>
nnoremap <leader>fF :ClearCtrlPCache<cr>:CtrlP<cr>
nnoremap <leader>fb :CtrlPBuffer<cr>
nnoremap <leader>fm :CtrlPMRUFiles<cr>

nnoremap <F2> :YRShow<cr>
nnoremap <F4> <Plug>CtrlSFPrompt
nnoremap <F5> :GitGutterSignsToggle<cr>

nnoremap ! <Plug>CtrlSFCwordExec

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

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

nnoremap - :NERDTreeFind<cr>
map <Leader><Leader> <Plug>(easymotion-prefix)
map ) <Plug>(easymotion-sn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
