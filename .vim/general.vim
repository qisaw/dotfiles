set smartindent
set backupcopy=yes
" show existing tab with 2 spaces width
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
"if we use a capital it will look for case sensitive
set ignorecase
set smartcase
set showmatch
set linespace=0
set relativenumber
set number
set scrolloff=3
"yank to clipboard
set clipboard+=unnamed
"allow use to use bash
set shell=/bin/bash
set nospell


syntax on
filetype on

set suffixesadd+=.vue

"set all .es6 files to be javascript files
au bufnewfile,bufread *.es6 set filetype=javascript
au BufNewFile,BufRead *.flow set filetype=javascript
au BufNewFile,BufRead *.vue set filetype=vue
au BufNewFile,BufRead *Dockerfile* set filetype=dockerfile

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000
