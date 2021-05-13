" Quicky mappings
nnoremap <silent> , :<c-u>WhichKey ','<CR>
vnoremap <silent> , :<c-u>WhichKeyVisual ','<CR>

let g:comma_which_key_map = {
  \ ']': ['<Plug>(coc-diagnostic-next)'                          , 'previous diagnostic (,])'],
  \ '[': ['<Plug>(coc-diagnostic-prev)'                          , 'next diagnostic (,[)'],
  \ 'd': ['<Plug>(coc-definition)'                               , 'go to definition (,d)'],
  \ 'y': ['<Plug>(coc-type-definition)'                          , 'go totype definition (,y)'],
  \ 'i': ['<Plug>(coc-implementation)'                           , 'go to implementation (,i)'],
  \ 'r': ['<Plug>(coc-references)'                               , 'go to references (,r)'],
\ }

call which_key#register(',', "g:comma_which_key_map")
