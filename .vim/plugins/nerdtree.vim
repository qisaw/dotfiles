" NERDTree Config
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeMapOpenExpl="j"
let NERDTreeShowHidden=1

nnoremap <C-S> :NERDTreeFind<CR>

