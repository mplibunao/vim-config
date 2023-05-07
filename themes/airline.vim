" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable extensions one-by-one
"let g:airline_extensions = []

" COC
" Disable errors, warnings, word prettier as they block the filename
" enable/disable coc integration
let g:airline#extensions#coc#enabled = 0
" enable/disable coc status display
let g:airline#extensions#coc#show_coc_status = 0

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'onedark'

" Always show tabs
" In settings
"set showtabline=2

" We don't need to see things like -- INSERT -- anymore
" Set in settings. We want this so we can remove the mode in airline
set noshowmode


" Long branch names block the filename
" let g:airline#extensions#branch#enabled = 0
let g:airline#extensions#branch#displayed_head_limit = 10
" to only show the tail, e.g. a branch 'feature/foo' becomes 'foo', use
let g:airline#extensions#branch#format = 1
