filetype off
call pathogen#infect()
call pathogen#helptags()
filetype on
filetype plugin indent on
set background=dark
set updatetime=4000
colorscheme solarized 
if has("autocmd")
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
		autocmd BufRead,BufNewFile *.as set filetype=actionscript
		autocmd BufRead,BufNewFile *.blade set filetype=jade
  augroup END
	autocmd BufReadPost fugitive://* set bufhidden=delete
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
nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
nmap <C-t> :tabnew<cr>
map <C-t> :tabnew<cr>
map <C-S-tab> :tabprevious<cr>
map <C-tab> :tabnext<cr>
imap <C-S-tab> <ESC>:tabprevious<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
imap <C-t> <ESC>:tabnew<cr>
map <leader>l <Plug>TaskList
map <leader>g :GundoToggle<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>t :TlistToggle<CR>

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

nmap SQ <ESC>:mksession! ~/.vim/Session.vim<CR>:wqa<CR>
