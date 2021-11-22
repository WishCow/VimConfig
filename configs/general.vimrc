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


" AirLine
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1

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

let g:neomake_open_list = 2
set scrolloff=10
let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'

let g:sneak#s_next = 1

let g:mergetool_layout = 'mr,b'

lua << EOF
require'nvim-treesitter.configs'.setup {
  indent = {
    enable = true
  },
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    --colors = {}, -- table of hex strings
    --termcolors = {} -- table of colour name strings
  }
}

local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  }
}

require'colorizer'.setup()
require('gitsigns').setup()

--require('telescope').load_extension('coc')
require'lightspeed'.setup {
    exit_after_idle_msecs = { labeled = 5000, unlabeled = 5000 },
    safe_labels = {"q", "w", "e", "r", "t", "a", "s", "d", "f", "g", "y", "x", "c", "v", "b" },
    labels = {"q", "w", "e", "r", "t", "a", "s", "d", "f", "g", "y", "x", "c", "v", "b" }
}
EOF

let g:nvim_tree_lsp_diagnostics = 1
let g:nvim_tree_gitignore = 1
let g:nvim_tree_ignore = ['.git']
let g:nvim_tree_auto_close = 1

let g:nvim_tree_icons = {
    \ 'default': '',
    \ }
let g:nvim_tree_disable_netrw = 0
let g:nvim_tree_hijack_netrw = 0

