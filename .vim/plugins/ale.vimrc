"ale and airline
let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_set_balloons = 1
"don't show typescript erros when using flow 
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\ '\.jsbundle$': {'ale_linters': [], 'ale_fixers': []},
\ 'capps-platform\/backend\/.*\.js$': {'ale_linters': ['eslint', 'tsserver', 'prettier'], 'ale_fixers': ['eslint', 'prettier']},
\ 'capps-platform\/frontend\/.*\.js$': {'ale_linters': ['eslint', 'flow-language-server', 'prettier'], 'ale_fixers': ['eslint', 'prettier']},
\ 'capps-platform\/lambdas\/.*\.js$': {'ale_linters': ['eslint', 'flow-language-server', 'prettier'], 'ale_fixers': ['eslint', 'prettier']},
\ 'capps-react-app\/.*\.js$': {'ale_linters': ['eslint', 'flow', 'prettier'], 'ale_fixers': ['prettier']},
\ '\.ts$': {'ale_linters': ['tslint', 'tsserver', 'typecheck']},
\ '\.tsx$': {'ale_linters': ['tslint', 'tsserver', 'typecheck']},
\}
let g:ale_pattern_options_enabled = 1
let g:ale_fix_on_save = 0
nnoremap <leader>h :ALEHover<CR>
nnoremap <leader>gd :ALEGoToDefinition<CR>
nnoremap <leader>ref :ALEFindReferences<CR>
nnoremap <leader>ss :ALESymbolSearch<CR>
" ensure that ale is not too eager
set completeopt+=noinsert
" use tab and shift-tab to navigate autocomplete menu
inoremap <expr> <Tab> ((pumvisible())?("\<C-n>"):("\<Tab>"))
inoremap <expr> <S-Tab> ((pumvisible())?("\<C-p>"):("\<S-Tab>"))
