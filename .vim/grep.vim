if executable('ag')
  let g:ackprg = 'ag --nogroup --column --ignore=*.jsbundle --ignore-dir=node_modules'
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor\ --ignore=*.jsbundle\ --ignore-dir=node_modules
endif

" bind <leader>g to grep word under cursor
nnoremap <leader>g :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap <leader>rw :%s/\<<C-R><C-W>\>/
" show grep results in a new window
autocmd QuickFixCmdPost *grep* cwindow
