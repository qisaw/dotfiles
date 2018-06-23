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
Plugin 'mxw/vim-jsx'
Plugin 'mhinz/vim-janah'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
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
Plugin 'easymotion/vim-easymotion'
" You need to go into the repo and run make
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/unite.vim'
Plugin 'mhartington/vim-typings'
Plugin 'jreybert/vimagit'
Plugin 'flowtype/vim-flow'
Plugin 'airblade/vim-rooter'
Plugin 'ap/vim-css-color'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'hashivim/vim-terraform'
Plugin 'posva/vim-vue'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'prettier/vim-prettier', { 'oninstall': 'yarn install' }

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set smartindent
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
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
inoremap <leader><leader><space> <C-x><C-o>

" space space to go to the previous buffer
nmap <leader><space> :b#<CR>
" git gutter
nmap <leader>hh <Plug>GitGutterNextHunk
nmap <leader>HH <Plug>GitGutterPrevHunk

" easy motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  q <Plug>(easymotion-next)
map  Q <Plug>(easymotion-prev)
map <leader><leader>L <Plug>(easymotion-bd-jk)
map <leader><leader>L <Plug>(easymotion-overwin-line)

nmap  <leader><leader>w <Plug>(easymotion-bd-w)
nmap <leader><leader>w <Plug>(easymotion-overwin-w)
let g:EasyMotion_smartcase = 1

" show existing tab with 2 spaces width
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set rtp+=~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/
"if we use a capital it will look for case sensitive
set ignorecase
set smartcase

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
if (has('gui_running'))
  set background=dark
  colorscheme solarized
else
  colorscheme darkblue
endif

set nu
set showmatch
set guifont=Anonymice\ Powerline:h16
"yank to clipboard
set clipboard+=unnamed
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'node_modules/.bin/eslint --no-ignore'

set suffixesadd+=.vue

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
syntax on
filetype on

"control P open buffer mode
map <C-P> :CtrlPMRUFiles<CR>
"ignore node_modules
set wildignore+=*/node_modules/*

"Typescript use jsx
let g:typescript_compiler_options="--jsx"
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

"vim javascript
let g:javascript_plugin_flow = 1
let g:flow#autoclose = 1

let g:javascript_conceal_function = "ƒ"
let g:javascript_conceal_arrow_function = "λ"

"set conceallevel=1

"vim rooter
let g:rooter_patterns = ['package.json', '.git/']
let g:rooter_resolve_links = 1

let g:jsx_ext_required = 0

let g:indent_guides_enable_on_vim_startup = 1

"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#ffccff   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#4d004d ctermbg=4

let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

let g:terraform_align=1
let g:terraform_fmt_on_save=1

"set all .es6 files to be javascript files
au BufNewFile,BufRead *.es6 set filetype=javascript

if executable('ag')
  let g:ackprg = 'ag --nogroup --column'

  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

autocmd BufEnter *.js if (executable('./node_modules/.bin/flow')) | let g:flow#flowpath = "./node_modules/.bin/flow" | else | let g:flow#flowpath = "flow" | endif
  

"allow use to use bash
set shell=/bin/bash

autocmd QuickFixCmdPost *grep* cwindow

