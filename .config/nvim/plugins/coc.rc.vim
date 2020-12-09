nmap <silent> gd <Plug>(coc-definition)
noremap <silent> <C-f> <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Extensions
let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ 'coc-vetur',
  \ ]
