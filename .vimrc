filetype off
call pathogen#infect()
call pathogen#helptags()
filetype on
filetype plugin indent on
set background=dark
colorscheme solarized 
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
		autocmd BufRead,BufNewFile *.as set filetype=actionscript
  augroup END
endif
syntax on
set number
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set wildchar=<Tab> wildmenu wildmode=full
set foldmethod=syntax
set foldlevel=99
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <leader>n :NERDTreeToggle<CR>
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
