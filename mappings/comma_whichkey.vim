" Quicky mappings
nnoremap <silent> , :<c-u>WhichKey ','<CR>
vnoremap <silent> , :<c-u>WhichKeyVisual ','<CR>

let g:comma_which_key_map = {
  \ ']': ['<Plug>(coc-diagnostic-next)'                          , 'previous diagnostic (,])'],
  \ '[': ['<Plug>(coc-diagnostic-prev)'                          , 'next diagnostic (,[)'],
  \ 'o': ['<c-o>'                                                , 'go to prev jump <C-O>'],
  \ 'i': ['<c-i>'                                                , 'go to next jump <C-I>'],
  \ 'd': ['<Plug>(coc-definition)'                               , 'go to definition (,d)'],
  \ 'y': ['<Plug>(coc-type-definition)'                          , 'go to t[Y]pe definition (,y)'],
  \ 'm': ['<Plug>(coc-implementation)'                           , 'go to i[M]plementation (,m)'],
  \ 'r': ['<Plug>(coc-references)'                               , 'go to references (,r)'],
\ }

call which_key#register(',', "g:comma_which_key_map")
