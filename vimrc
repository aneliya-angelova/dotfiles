let mapleader = ","

" Activate pathogen plugin
execute pathogen#infect()
execute pathogen#helptags()

" General appearance
set showcmd
set laststatus=2
set listchars=tab:▸\ ,eol:¬
set number
syntax on
set hlsearch

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

" Disable swapfile and backup
set nobackup
set noswapfile

" Use CSS editing capabilities in LESS files
au BufNewFile,BufRead *.less set filetype=css

" Powerline settings
set encoding=utf-8

" Toggle NERDTree on F3
autocmd VimEnter * nmap <F3> :NERDTreeToggle<CR>
autocmd VimEnter * imap <F3> <Esc>:NERDTreeToggle<CR>a
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=35

" Turn on automatic code folding for XML files
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" Allow backspacing
set backspace=indent,eol,start
