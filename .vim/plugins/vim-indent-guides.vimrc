let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
"ensure indents don't interfere with goto definition
nmap <silent> <Leader>indent <Plug>IndentGuidesToggle
