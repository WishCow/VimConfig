runtime bundle/pathogen/autoload/pathogen.vim
filetype off
call pathogen#infect()
call pathogen#helptags()

runtime configs/general.vimrc
runtime configs/mappings.vimrc
runtime configs/functions.vimrc
runtime configs/plugins.vimrc

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

set wildignore+=*/cache/*
