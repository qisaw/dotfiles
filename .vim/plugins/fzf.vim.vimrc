map <C-A> :Files<CR>
map <C-P> :GFiles<CR>
map <C-F> :Ag<CR>
map <C-B> :Buffer<CR>
map <leader><leader>gs :Commits<CR>

let g:fzf_buffers_jump = 1

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
