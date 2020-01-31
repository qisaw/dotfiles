set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ],
      \ },
      \ }
