nnoremap <S-q> :tabclose<cr>
nmap _ :NvimTreeToggle<CR>
nmap <leader>q :tabonly<CR>
nmap / /\v

" Moving between windows
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h

" Same, but for colemak
nnoremap <a-m> <c-w>h
nnoremap <a-n> <c-w>j
nnoremap <a-e> <c-w>k
nnoremap <a-i> <c-w>l
nnoremap <a-q> :close<cr>

nmap <leader>f :Files<cr>
nmap <leader>b :Buffers<cr>
nmap <leader>m :History<cr>

nmap <F2> :tabnew ~/.vim/configs/plugins.vimrc<cr>
nmap <F3> :tabnew ~/.vim/configs/local.vimrc<cr>

nmap <leader>F <Plug>CtrlSFPrompt
nmap ! <Plug>CtrlSFCwordExec
vmap ! <Plug>CtrlSFVwordExec
nnoremap zz yyp^i//<esc>j

nnoremap <tab> :tabnext<cr>
nnoremap <S-tab> :tabprev<cr>
nnoremap <C-u> <C-i>

nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>
nmap <C-t> :tabnew<cr>
nmap - :Explore<cr>
