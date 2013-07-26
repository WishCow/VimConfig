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

set wildignore+=*/cache/*

" VDebug
let g:vdebug_options = {
\    "port" : 9000,
\    "timeout" : 20,
\    "server" : 'localhost',
\    "on_close" : 'detach',
\    "break_on_open" : 0,
\    "ide_key" : '',
\    "debug_window_level" : 0,
\    "debug_file_level" : 0,
\    "debug_file" : "",
\    "path_maps" : {},
\    "watch_window_style" : 'compact',
\    "marker_default" : '⬦',
\    "marker_closed_tree" : '▸',
\    "marker_open_tree" : '▾',
\    "continuous_mode"  : 0
\}
let g:vdebug_keymap = {
\    "run" : "<F8>",
\    "run_to_cursor" : "<F1>",
\    "step_over" : "<F6>",
\    "step_into" : "<F5>",
\    "step_out" : "<F7>",
\    "close" : "<F2>",
\    "detach" : "<Nop>",
\    "set_breakpoint" : "<F10>",
\    "get_context" : "<F11>",
\    "eval_under_cursor" : "<F12>",
\}
