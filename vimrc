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
