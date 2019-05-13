" setting leader to ,
let mapleader = ","

" these remappings are because I use a messed up keyboard layout. You can find
" the layout in this repository if you are a glotton for pain and want to
" looki like an idiot when typing on any other completer apart from your own.
nnoremap l o
nnoremap o l
nnoremap L O
nnoremap O L
nnoremap j n
nnoremap n j
nnoremap J N
nnoremap N J
nnoremap k e
nnoremap e k
nnoremap K E
nnoremap E <nop>
nnoremap h y
onoremap h y
nnoremap y h
nnoremap H Y
nnoremap Y H

vnoremap l o
vnoremap o l
vnoremap L O
vnoremap O L
vnoremap j n
vnoremap n j
vnoremap J N
vnoremap N J
vnoremap k e
vnoremap e k
vnoremap K E
vnoremap E <nop>
vnoremap h y
vnoremap y h
vnoremap H Y
vnoremap Y H

" leaded cd to move to the current working directory
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
" in insert mode leader leader space to open up the autocomplete
inoremap <leader><leader><space> <C-x><C-o>

" space space to go to the previous buffer
nmap <leader><space> :b#<CR>
