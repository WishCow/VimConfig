let mapleader = " "
call plug#begin('~/.vim/plugged')
runtime configs/plugins.vimrc
call plug#end()

runtime configs/local.vimrc
runtime configs/general.vimrc
runtime configs/mappings.vimrc
runtime configs/functions.vimrc
runtime configs/coc.vim
if g:is_colemak
    runtime configs/colemak.vim
end


if has("gui_running")
    runtime configs/gui.vimrc
end


au BufNewFile,BufRead *.html.twig set ft=html.twig
