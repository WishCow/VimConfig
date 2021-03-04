nnoremap <S-q> :tabclose<cr>
nmap _ :NERDTreeToggle<CR>
nmap <leader>q :tabonly<CR>
nmap / /\v

map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h

if !g:is_colemak
    nmap <leader>ff :FZF<cr>
    nmap <leader>fb :CtrlPBuffer<cr>
    nmap <leader>fm :CtrlPMRUFiles<cr>
end

nmap <F2> :tabnew ~/.vim/configs/plugins.vimrc<cr>
nmap <F4> <Plug>CtrlSFPrompt

nmap ! <Plug>CtrlSFCwordExec
vmap ! <Plug>CtrlSFVwordExec
nnoremap zz yyp^i//<esc>j

nnoremap <tab> :tabnext<cr>
nnoremap <S-tab> :tabprev<cr>
nnoremap <C-u> <C-i>

nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>
nmap <C-t> :tabnew<cr>
nmap - :Explore<cr>
