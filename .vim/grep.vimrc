if executable('ag')
  let g:ackprg = 'ag --nogroup --column --ignore=*.jsbundle --ignore-dir=node_modules'
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor\ --ignore=*.jsbundle\ --ignore-dir=node_modules
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag --ignore=*.jsbundle --ignore-dir=node_modules %s -l --nocolor -g ""'
endif

" bind <leader>g to grep word under cursor
nnoremap <leader>g :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap <leader>r :%s/\<<C-R><C-W>\>/
" show grep results in a new window
autocmd QuickFixCmdPost *grep* cwindow
