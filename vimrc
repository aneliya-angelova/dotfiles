let mapleader = ","

" List of plugins that pathogen will skip loading
let g:pathogen_disabled = ['vim-classpath']

" Activate pathogen plugin
call pathogen#infect()
call pathogen#helptags()

" General appearance
set showcmd
set laststatus=2
set listchars=tab:▸\ ,eol:¬
set number
syntax on
set hlsearch
colorscheme solarized
set background=dark

" Indendation
set tabstop=2
set softtabstop=2
set shiftwidth=2
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

" Enable Javascript auto-completion
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" Use CSS editing capabilities in LESS files
au BufNewFile,BufRead *.less set filetype=css

" Enable .viminfo to save Clojure classpath across sessions
set viminfo+=!

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

" Map cpt to run tests in vim-fireplace
map cpt :w<CR>:Require<CR>:Eval (run-tests)<CR>
map cpT :w<CR>:Require<CR>:Eval (run-all-tests)<CR>
