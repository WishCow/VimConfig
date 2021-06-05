map <buffer> <F3> :!cargo +nightly clippy --fix -Z unstable-options --allow-dirty --allow-staged<cr>

"augroup rustlocal
"    autocmd!
"    au BufReadPost,BufNewFile <buffer> compiler cargo | call neomake#configure#automake('nrwi', 500)
"augroup END
