" Always show statusline
set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_solarized'
let g:airline_powerline_fonts = 1

let g:airline#extensions#disable_rtp_load = 1
let g:airline_extensions = ['branch', 'hunks', 'coc']

"get coc to show on statusline
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

