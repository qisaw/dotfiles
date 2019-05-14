"ale and airline
"let g:ale_completion_enabled = 1
"let g:airline#extensions#ale#enabled = 1
"let g:ale_set_balloons = 1
""don't show typescript erros when using flow 
"let g:ale_pattern_options = {
"\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
"\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
"\ '\.jsbundle$': {'ale_linters': [], 'ale_fixers': []},
"\ 'capps-platform\/backend\/.*\.js$': {'ale_linters': ['eslint', 'tsserver', 'prettier'], 'ale_fixers': ['eslint', 'prettier']},
"\ 'capps-platform\/frontend\/.*\.js$': {'ale_linters': ['eslint', 'flow-language-server', 'prettier'], 'ale_fixers': ['eslint', 'prettier']},
"\ 'capps-platform\/lambdas\/.*\.js$': {'ale_linters': ['eslint', 'flow-language-server', 'prettier'], 'ale_fixers': ['eslint', 'prettier']},
"\ 'capps-react-app\/.*\.js$': {'ale_linters': ['eslint', 'flow', 'prettier'], 'ale_fixers': ['prettier']},
"\ '\.ts$': {'ale_linters': ['tslint', 'tsserver', 'typecheck']},
"\ '\.tsx$': {'ale_linters': ['tslint', 'tsserver', 'typecheck']},
"\}
"let g:ale_pattern_options_enabled = 1
"let g:ale_fix_on_save = 0
"nnoremap <leader>h :ALEHover<CR>
"nnoremap <leader>gd :ALEGoToDefinition<CR>
"nnoremap <leader>ref :ALEFindReferences<CR>
"nnoremap <leader>ss :ALESymbolSearch<CR>
"" ensure that ale is not too eager
"set completeopt+=noinsert


" this seems to do nothing, TODO fix this
autocmd CursorHold * silent call CocActionAsync('highlight')
set updatetime=300

" use tab and shift-tab to navigate autocomplete menu
" use tab to start an autocomplete
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr> <S-Tab> ((pumvisible())?("\<C-p>"):("\<S-Tab>"))

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" leader leader space to enable autocomplete
inoremap <silent><expr> <leader><leader><space> coc#refresh()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
