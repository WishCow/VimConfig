map <A-l> :tabnext<cr>
map <A-h> :tabprevious<cr>
imap <A-l> <esc>:tabnext<cr>i
imap <A-h> <esc>:tabprevious<cr>i
map <S-q> :tabclose<cr>
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>pm :make<CR>
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
vmap <leader>pa :call PhpAlign()<CR>
