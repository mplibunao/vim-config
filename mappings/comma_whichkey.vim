" Quicky mappings
nnoremap <silent> , :<c-u>WhichKey ','<CR>
vnoremap <silent> , :<c-u>WhichKeyVisual ','<CR>

let g:comma_which_key_map = {
  \ ']': ['<Plug>(coc-diagnostic-next)'                          , 'previous diagnostic ([g)'],
  \ '[': ['<Plug>(coc-diagnostic-prev)'                          , 'next diagnostic (]g)'],
\ }

call which_key#register(',', "g:comma_which_key_map")
