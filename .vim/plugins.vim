set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mhinz/vim-janah'
Plug 'moll/vim-node'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-rooter'
Plug 'hashivim/vim-terraform'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install --legacy-peer-deps' }
Plug 'jaawerth/nrun.vim'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm i' }
Plug 'aklt/plantuml-syntax'
Plug 'tyru/open-browser.vim'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'tpope/vim-rhubarb'
Plug 'lifepillar/vim-solarized8'
Plug 'NLKNguyen/papercolor-theme'
Plug 'itchyny/lightline.vim'
Plug 'kamykn/spelunker.vim'
Plug 'pantharshit00/vim-prisma'
Plug 'github/copilot.vim'
Plug 'folke/tokyonight.nvim'
Plug 'EdenEast/nightfox.nvim'

Plug 'neoclide/coc-json', { 'do': 'npm install' }
Plug 'neoclide/coc-css', { 'do': 'npm install' }
Plug 'neoclide/coc-tsserver', { 'do': 'npm install' }
Plug 'neoclide/coc-yaml', { 'do': 'npm install' }
Plug 'neoclide/coc-prettier', { 'do': 'npm install' }
Plug 'neoclide/coc-eslint', { 'do': 'npm install' }
Plug 'josa42/coc-docker', { 'do': 'npm install' }
Plug 'josa42/coc-sh', { 'do': 'npm install' }
Plug 'neoclide/coc-highlight', { 'do': 'npm install' }
Plug 'fannheyward/coc-sql', { 'do': 'npm install' }
"Plug 'pantharshit00/coc-prisma', { 'do': 'npm install', 'tag': 'v0.12.0' }
Plug 'pantharshit00/coc-prisma', { 'do': 'npm install --legacy-peer-deps', 'tag': 'v0.12.0' }
Plug 'amadeus/vim-mjml'





call plug#end()              " required
filetype plugin indent on    " required
