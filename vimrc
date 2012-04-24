" Activate pathogen plugin
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Appearance 
set number
syntax on

" Enable file-type detection
if has("autocmd")
    filetype plugin indent on
endif
