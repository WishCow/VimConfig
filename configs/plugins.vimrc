set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1

au BufRead,BufNewFile *.twig set syntax=htmljinja

"NerdTree enhancements

let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeHijackNetrw=0

" CtrlP stuff
let g:ctrlp_mruf_max = 20
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_jump_to_buffer = 1
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 1
let g:ctrlp_max_height = 20


map <leader>ff :CtrlP<cr>
map <leader>fF :ClearCtrlPCache<cr>:CtrlP<cr>
map <leader>fb :CtrlPBuffer<cr>
map <leader>fm :CtrlPMRUFiles<cr>

" YankRing
map <leader>y :YRShow<cr>

let g:showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ.'`^<>[]{}()\""
