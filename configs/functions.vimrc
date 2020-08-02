"Use TAB for keyword completion when in the middle of a word, insert TABs as usual otherwise
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

inoremap <c-x><c-b> <c-r>=ListBuffers()<cr>
function! ListBuffers()
  let buffers = getbufinfo({'buflisted': 1, 'bufloaded': 1})
  let bufnames = map(map(buffers, 'v:val.name'), 'substitute(v:val, getcwd(), "", "")')
  call complete(col('.'), bufnames)
  return ''
endfunction
