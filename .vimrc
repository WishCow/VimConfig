call plug#begin('~/.vim/plugged')
runtime configs/plugins.vimrc
call plug#end()

runtime configs/general.vimrc
runtime configs/mappings.vimrc
runtime configs/functions.vimrc
runtime configs/coc.vim

if has("gui_running")
    runtime configs/gui.vimrc
end

runtime configs/local.vimrc

au BufNewFile,BufRead *.html.twig set ft=html.twig
