set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mhinz/vim-janah'
Plug 'airblade/vim-gitgutter'
Plug 'moll/vim-node'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'derekwyatt/vim-scala'
Plug 'jiangmiao/auto-pairs'
Plug 'danro/rename.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mhartington/vim-typings'
Plug 'airblade/vim-rooter'
Plug 'ap/vim-css-color'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'hashivim/vim-terraform'
Plug 'posva/vim-vue'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jaawerth/nrun.vim'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'aklt/plantuml-syntax'
Plug 'tyru/open-browser.vim'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'tpope/vim-rhubarb'
Plug 'lifepillar/vim-solarized8'

call plug#end()              " required
filetype plugin indent on    " required
