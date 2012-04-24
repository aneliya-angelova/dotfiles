" Activate pathogen plugin
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" General appearance settings
set number
syntax on
colorscheme solarized

" Use different backgrounds for terminal and GUI modes
if has('gui_running')
    set background=light
else
    set background=dark
endif

" Enable file-type detection
if has("autocmd")
    filetype plugin indent on
endif
