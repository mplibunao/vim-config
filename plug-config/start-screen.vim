" -h startify for more information

let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'a': '~/Projects/mg/alam/alam.edu' },
            \ { 'p': '~/Projects' },
            \ { 'm': '~/Projects/mg' },
            \ { 'v': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ { 'd': '~/Desktop' },
            \ { 's': '~/Desktop/stocks' },
            \ ]

" Automatically restart a session
let g:startify_session_autoload = 1

" Delete all buffers when loading or closing a session
let g:startify_session_delete_buffers = 1

" Similar to vim-rooter
let g:startify_change_to_vcs_root = 1

" For unicode support
let g:startify_fortune_use_unicode = 1

" Automatically update sessions
let g:startify_session_persistence = 1

" Get rid of empty buffer and quit
let g:startify_enable_special = 0

let g:startify_custom_header = [
      \ '           $$\   $$\      $$$$$$\      $$$$$$\        $$\                       $$\      $$\ $$$$$$$\  ',
      \ '           $$ |  $$ |    $$  __$$\    $$$ __$$\       $$ |                      $$$\    $$$ |$$  __$$\ ',
      \ '$$\    $$\ $$ |  $$ |    \__/  $$ |   $$$$\ $$ |      $$$$$$$\  $$\   $$\       $$$$\  $$$$ |$$ |  $$ |',
      \ '\$$\  $$  |$$$$$$$$ |     $$$$$$  |   $$\$$\$$ |      $$  __$$\ $$ |  $$ |      $$\$$\$$ $$ |$$$$$$$  |',
      \ ' \$$\$$  / \_____$$ |    $$  ____/    $$ \$$$$ |      $$ |  $$ |$$ |  $$ |      $$ \$$$  $$ |$$  ____/ ',
      \ '  \$$$  /        $$ |    $$ |         $$ |\$$$ |      $$ |  $$ |$$ |  $$ |      $$ |\$  /$$ |$$ |      ',
      \ '   \$  /         $$ |$$\ $$$$$$$$\ $$\\$$$$$$  /      $$$$$$$  |\$$$$$$$ |      $$ | \_/ $$ |$$ |      ',
      \ '    \_/          \__|\__|\________|\__|\______/       \_______/  \____$$ |      \__|     \__|\__|      ',
      \ '                                                               $$\   $$ |                              ',
      \ '                                                               \$$$$$$  |                              ',
      \ '                                                                \______/                               '
\ ]

