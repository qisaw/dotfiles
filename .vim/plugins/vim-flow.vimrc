let g:flow#autoclose = 1

autocmd BufEnter *.js let g:flow#flowpath = nrun#Which('flow')
autocmd BufEnter *.jsx let g:flow#flowpath = nrun#Which('flow')
autocmd BufEnter *.es6 let g:flow#flowpath = nrun#Which('flow')
autocmd BufEnter *.flow let g:flow#flowpath = nrun#Which('flow')
