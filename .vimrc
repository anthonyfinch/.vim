filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype on
filetype plugin indent on
colorscheme desert
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
  augroup END
endif
syntax on
set number
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set wildchar=<Tab> wildmenu wildmode=full
