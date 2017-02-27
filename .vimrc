call plug#begin('~/.vim/plugged')
runtime configs/plugins.vimrc
call plug#end()

runtime configs/plugins.vimrc
runtime configs/general.vimrc
runtime configs/mappings.vimrc
runtime configs/functions.vimrc

if has("gui_running")
    runtime configs/gui.vimrc
end

if has("win32") || has("win64")
    runtime configs/windows.vimrc
else
    runtime configs/linux.vimrc
end

let localConfig = expand("~/.vim/configs/local.vimrc")
if filereadable(localConfig)
    execute 'source' localConfig
endif

au BufNewFile,BufRead *.html.twig set ft=html.twig
