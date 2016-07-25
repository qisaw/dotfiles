set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'mhinz/vim-janah'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'moll/vim-node'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'derekwyatt/vim-scala'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vitalk/vim-simple-todo'
Plugin 'danro/rename.vim'
Plugin 'leafgarland/typescript-vim'
" You need to go into the repo and run make
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/unite.vim'
Plugin 'mhartington/vim-typings'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this linen 'tpope/vim-fugitive'

let mapleader = ","
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

" space space to go to the previous buffer
nmap <space><space> :b#<cr>

" show existing tab with 2 spaces width
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim/

" NERDTree Config
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeMapOpenExpl="j"

" NERDCommentor
map <C-c> <leader>c
let g:NERDDefaultAlign = 'left'

" Always show statusline
set laststatus=2

" gui settings
if (&t_Co == 256 || has('gui_running'))
  set background=dark
  colorscheme solarized
else
  set t_Co=16
  colorscheme janah
endif

set nu
set guifont=Anonymice\ Powerline:h16
let g:syntastic_javascript_checkers = ['eslint']

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
syntax on
filetype on

"control P open buffer mode
map <C-P> :CtrlPMRUFiles<CR>

"Typescript use jsx
let g:typescript_compiler_options="--jsx"
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

"set all .es6 files to be javascript files
au BufNewFile,BufRead *.es6 set filetype=javascript

if executable('ag')
  let g:ackprg = 'ag --nogroup --column'

  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

autocmd QuickFixCmdPost *grep* cwindow

