setlocal ts=2 sts=2 sw=2 foldlevel=5 expandtab foldmethod=indent

function! GoToNextIndent(inc)
    " Get the cursor current position
    let currentPos = getpos('.')
    let currentLine = currentPos[1]
    let matchIndent = 0

    " Look for a line with the same indent level whithout going out of the buffer
    while !matchIndent && currentLine != line('$') + 1 && currentLine != -1
        let currentLine += a:inc
        let matchIndent = indent(currentLine) == indent('.')
    endwhile

    " If a line is found go to this line
    if (matchIndent)
        let currentPos[1] = currentLine
        call setpos('.', currentPos)
    endif
endfunction

nnoremap <buffer> <leader>ip :call GoToNextIndent(1)<CR>
nnoremap <buffer> <leader>in :call GoToNextIndent(-1)<CR>
