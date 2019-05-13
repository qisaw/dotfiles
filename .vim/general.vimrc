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
set nu
set showmatch
set linespace=0
"yank to clipboard
set clipboard+=unnamed
"allow use to use bash
set shell=/bin/bash


syntax on
filetype on

set suffixesadd+=.vue

"set all .es6 files to be javascript files
au bufnewfile,bufread *.es6 set filetype=javascript
au BufNewFile,BufRead *.flow set filetype=javascript
au BufNewFile,BufRead *.vue set filetype=javascript
