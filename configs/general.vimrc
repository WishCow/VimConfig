set nocompatible
filetype plugin indent on
syntax on
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
let mapleader = "ő"
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
colors aldmeris

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

if &t_Co == 8 && $TERM !~# '^linux'
  set t_Co=16
endif


autocmd InsertLeave * if pumvisible() == 0|pclose|endif

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

" Ale
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['✗ %d', '⚠ %d', '⬥ ok']
let g:airline_symbols = { "maxlinenr": '' }
let g:airline_section_b = "%{fnamemodify(getcwd(), ':t')}"
let g:airline_section_error = "%{ALEGetStatusLine()}"
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%:%severity%] %s'

let g:ale_linters = {
    \ 'php': ['phpstan']
\}

" CtrlSF searches regexes by default
let g:ctrlsf_regex_pattern = 1
" Only indent two lines, instead of 4 in search results
let g:ctrlsf_indent = 2

" IncSearch, execute nohl on movement
let g:incsearch#auto_nohlsearch = 1

" Allow per project rc files
set exrc
set secure

autocmd VimResized * wincmd =

" Do not put double spaces after .?! when joining lines
set nojoinspaces

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

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

let g:sneak#s_next = 1
let g:sneak#target_labels = "asdfghjklqwertyuiopzxcvbnmASDFGHJKLQWERTYUIOPZXCVBNM"
let g:EasyMotion_keys = "asdfghjklqwertyuiopzxcvbnmASDFGHJKLQWERTYUIOPZXCVBNM"

let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
                            \ '*.phar', '*.ini', '*.rst', '*.md',
                            \ '*vendor/*/test*', '*vendor/*/Test*',
                            \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
                            \ '*var/cache*', '*var/log*']


map <silent> <leader>d :CtrlPTag<cr><C-\>w
cmap w!! w !sudo tee > /dev/null %
