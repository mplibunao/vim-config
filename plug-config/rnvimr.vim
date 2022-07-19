" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

" Hides ranger after picking a file
let g:rnvimr_enable_picker = 1

" Make Ranger to hide the files included in gitignore when show_hidden=False
let g:rnvimr_hide_gitignore = 0

" Make Neovim wipe the buffers corresponding to the files deleted by Ranger
let g:rnvimr_enable_bw = 0

" Disable Rnvimr to import user config
" let g:nvimr_vanilla = 1

" Add views for Ranger to adapt the size of floating window
"let g:rnvimr_ranger_views = [
            "\ {'minwidth': 90, 'ratio': []},
            "\ {'minwidth': 50, 'maxwidth': 89, 'ratio': [1,1]},
            "\ {'maxwidth': 49, 'ratio': [1]}
            "\ ]

" Customize the initial layout
let g:rnvimr_layout = {
            \ 'relative': 'editor',
            \ 'width': float2nr(round(0.9 * &columns)),
            \ 'height': float2nr(round(0.9 * &lines)),
            \ 'col': float2nr(round(0.05 * &columns)),
            \ 'row': float2nr(round(0.05 * &lines)),
            \ 'style': 'minimal'
            \ }

" Customize multiple preset layouts
" '{}' represents the initial layout
"let g:rnvimr_presets = [
            "\ {'width': 0.600, 'height': 0.600},
            "\ {},
            "\ {'width': 0.800, 'height': 0.800},
            "\ {'width': 0.950, 'height': 0.950},
            "\ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
            "\ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
            "\ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
            "\ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
            "\ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
            "\ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
            "\ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
            "\ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}
            "\ ]


" Fullscreen for initial layout
 "let g:rnvimr_layout = {
            "\ 'relative': 'editor',
            "\ 'width': &columns,
            "\ 'height': &lines - 2,
            "\ 'col': 0,
            "\ 'row': 0,
            "\ 'style': 'minimal'
            "\ }
