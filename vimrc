" Activate pathogen plugin
call pathogen#infect()
call pathogen#helptags()

" General appearance
set listchars=tab:▸\ ,eol:¬
set number
syntax on
set hlsearch
colorscheme solarized

" Use different backgrounds for terminal and GUI modes
if has('gui_running')
    set background=light
else
    set background=dark
endif

" Indendation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Enable file-type detection
if has("autocmd")
    filetype plugin indent on
endif

" Hide the GUI toolbar
set go-=T

" Do not use modal alert dialogs! (Prefer Vim style prompt.)
" http://stackoverflow.com/questions/4193654/using-vim-warning-style-in-gvim
set guioptions+=c

" Indicate the end boundary of a change
set cpoptions+=$
