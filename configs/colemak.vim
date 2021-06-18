"set langmap=fe,pr,bt,jy,lu,ui,yo,ép,rs,sd,tf,mh,nj,ek,il,ol,dv,vb,kn,hm
"set langmap+=FE,PR,JY,LU,UI,YO,ÉP,RS,SD,TF,MH,NJ,EK,IL,OL,DV,VB,KN,HM

nnoremap k h
nnoremap l j
nnoremap j k
nnoremap h l

"let g:VM_maps = {}
"let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
"let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n

nmap <silent> <leader>n <Plug>(coc-diagnostic-next)
nmap <silent> <leader>e <Plug>(coc-diagnostic-prev)
