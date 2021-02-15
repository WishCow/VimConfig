"set langmap=fe,pr,bt,jy,lu,ui,yo,ép,rs,sd,tf,mh,nj,ek,il,ol,dv,vb,kn,hm
"set langmap+=FE,PR,JY,LU,UI,YO,ÉP,RS,SD,TF,MH,NJ,EK,IL,OL,DV,VB,KN,HM

nnoremap l k
nnoremap h j
nnoremap j h
nnoremap k l

let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n

nnoremap <a-m> <c-w>h
nnoremap <a-n> <c-w>j
nnoremap <a-e> <c-w>k
nnoremap <a-i> <c-w>l
nnoremap <a-t> :close<cr>

nmap <silent> <leader>n <Plug>(coc-diagnostic-next)
nmap <silent> <leader>e <Plug>(coc-diagnostic-prev)

nmap <leader>F <Plug>CtrlSFPrompt

nmap <leader>f :FZF<cr>
nmap <leader>b :CtrlPBuffer<cr>
nmap <leader>m :CtrlPMRUFiles<cr>
