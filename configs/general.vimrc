set nocompatible
set nu
set hlsearch
set incsearch
set sw=4
set ts=4
set sts=4
set expandtab
set wildmenu
set wildmode=list:longest
set wildignore+=*.a,*.o,*.bmp,*.png,*.gif,*.jpg,*.jpeg,.git,.hg,.svn,*~,*.swp,*.tmp,*/.git/*,*/.hg/*,*/.svn/*,app/cache/*,app/logs,.sass-cache,node_modules,web/built/*
set completeopt+=longest
set ignorecase
set smartcase
set laststatus=2
set modeline
set background=dark
set visualbell
set noerrorbells
set backspace=indent,eol,start
set encoding=utf-8
set showcmd
set showmatch
set hidden
set fillchars=vert:│,fold:-
set shiftround

set guicursor="n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
set noswapfile
set nobackup

set autoread
set history=1000

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
  if &termencoding ==# 'utf-8' || &encoding ==# 'utf-8'
    let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u00b7"
  endif
endif
set list

autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:syntastic_enable_signs=1

au BufRead,BufNewFile *.twig set syntax=htmljinja

"NerdTree enhancements

let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeHijackNetrw=0
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1


" CtrlP stuff
let g:ctrlp_mruf_max = 20
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_jump_to_buffer = 1
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 1
let g:ctrlp_max_height = 20
let g:ctrlp_map = ''

if executable('rg')
    set grepprg=rg\ --vimgrep
    let g:ctrlp_user_command = 'rg --files %s'
else
    let g:ctrlp_user_command = "find %s -type f " .
            \ "-not -wholename '*.git*' -not -wholename '*.svn*' -not -wholename '*.hg*' " .
            \ "-not -iname '*.png' -not -iname '*.gif' -not -iname '*.jp?g' " .
            \ "-not -wholename '*.sass-cache*' " .
            \ "-not -wholename '*web/built*' " .
            \ "-not -wholename '*app/cache*' " .
            \ "-not -wholename '*node_modules*' " .
            \ "| while read filename; do echo ${#filename} $filename; done " .
            \ "| sort -n | awk '{print $2}'"
endif


" AirLine
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1

"let g:airline_symbols = { "maxlinenr": '' }
"let g:airline_section_b = "%{fnamemodify(getcwd(), ':t')}"

" Ale
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['✗ %d', '⚠ %d', '⬥ ok']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%:%severity%] %s'

let g:ale_linters = {
    \ 'php': ['phpstan']
\}

" IncSearch, execute nohl on movement
let g:incsearch#auto_nohlsearch = 1

" Allow per project rc files
set exrc
set secure

autocmd VimResized * wincmd =

" Do not put double spaces after .?! when joining lines
set nojoinspaces

" Automatically create directories on save
fun! <SID>AutoMakeDirectory()

    let s:directory = expand("<afile>:p:h")

    if !isdirectory(s:directory)
        call mkdir(s:directory, "p")
    endif

endfun

autocmd BufWritePre,FileWritePre * :call <SID>AutoMakeDirectory()

" Debugging
let g:vdebug_options = {}
let g:vdebug_keymap = {}
let g:vdebug_options["watch_window_style"] = 'compact'
let g:vdebug_options["break_on_open"] = 0
let g:vdebug_options["continuous_mode"] = 1
let g:vdebug_keymap["run"] = '<C-d>'
let g:vdebug_keymap["set_breakpoint"] = '<F1>'
let g:vdebug_keymap["run_to_cursor"] = '<F2>'
let g:vdebug_keymap["step_over"] = '<F3>'
let g:vdebug_keymap["step_into"] = '<F4>'
let g:vdebug_keymap["step_out"] = '<F5>'
let g:vdebug_keymap["close"] = '<F6>'

" Persistent undo
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

" Highlight blocks of code in markdown
let g:markdown_fenced_languages = ['yaml', 'python', 'bash=sh', 'php']

let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
                            \ '*.phar', '*.ini', '*.rst', '*.md',
                            \ '*vendor/*/test*', '*vendor/*/Test*',
                            \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
                            \ '*var/cache*', '*var/log*']


map <silent> <leader>d :CtrlPTag<cr><C-\>w
cmap w!! w !sudo tee > /dev/null %

" Merge comments with J in a sensible way
set formatoptions+=j

" CtrlSf
" Autofocus
let g:ctrlsf_auto_focus = { "at": "start" }

" Nicer mappings
let g:ctrlsf_mapping = {"next": "n", "prev": "N", "vsplit": "v", "split": "s"}

" Search regexes by default
let g:ctrlsf_regex_pattern = 1
" Only indent two lines, instead of 4 in search results
let g:ctrlsf_indent = 2

set termguicolors

set t_vb=

" vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.
let &t_ut=''

set diffopt+=internal,algorithm:patience

let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>u'
set inccommand=split
let g:neomake_virtualtext_current_error = 0

au BufReadPost,BufNewFile *.rs compiler cargo | call neomake#configure#automake('nrwi', 500)
let g:neomake_open_list = 2
set scrolloff=10
let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} setlocal filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 foldlevel=5 expandtab foldmethod=indent

let g:sneak#s_next = 1

let g:mergetool_layout = 'mr,b'

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


nnoremap <leader>ip :call GoToNextIndent(1)<CR>
nnoremap <leader>in :call GoToNextIndent(-1)<CR>
