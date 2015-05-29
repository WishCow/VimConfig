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
colors molokai

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
let g:ctrlp_user_command = "find %s -type f " .
        \ "-not -wholename '*.git*' -not -wholename '*.svn*' -not -wholename '*.hg*' " .
        \ "-not -iname '*.png' -not -iname '*.gif' -not -iname '*.jp?g' " .
        \ "-not -wholename '*.sass-cache*' " .
        \ "-not -wholename '*web/built*' " .
        \ "-not -wholename '*app/cache*' " .
        \ "-not -wholename '*node_modules*' " .
        \ "| while read filename; do echo ${#filename} $filename; done " .
        \ "| sort -n | awk '{print $2}'"


" AirLine
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Syntastic
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" Use AG instead of Ack
let g:ackprg = 'ag --vimgrep'
