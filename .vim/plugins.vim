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
Plugin 'airblade/vim-gitgutter'
Plugin 'moll/vim-node'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'derekwyatt/vim-scala'
Plugin 'jiangmiao/auto-pairs'
Plugin 'danro/rename.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'easymotion/vim-easymotion'
" You need to go into the repo and run make
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'mhartington/vim-typings'
Plugin 'airblade/vim-rooter'
Plugin 'ap/vim-css-color'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'hashivim/vim-terraform'
Plugin 'posva/vim-vue'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'prettier/vim-prettier', { 'oninstall': 'yarn install' }
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jaawerth/nrun.vim'
Plugin 'tyrannicaltoucan/vim-deep-space'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'oninstall': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'neoclide/coc.nvim', {'oninstall': './install.sh nightly'}
"ENSURE YOU RUN 
"brew install --HEAD universal-ctags/universal-ctags/universal-ctags
"on mac
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'kristijanhusak/vim-js-file-import', {'oninstall': 'npm install'}

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

