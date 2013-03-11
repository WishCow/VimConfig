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
set wildignore+=*.a,*.o,*.bmp,*.png,*.gif,*.jpg,*.jpeg,.git,.hg,.svn,*~,*.swp,*.tmp,*/.git/*,*/.hg/*,*/.svn/*
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
