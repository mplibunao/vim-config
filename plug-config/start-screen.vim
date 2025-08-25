" -h startify for more information

let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ ]

let g:startify_bookmarks = [
            \ { 'a': '~/Users/mp/vimwiki/TIL/learning-path/index.md' },
            \ { 'd': '~/Projects/personal/dotfiles' },
            \ { 'D': '~/Desktop' },
            \ { 'n': '~/Projects/personal/notes' },
            \ { 't': '~/.config/kitty' },
            \ { 'v': '~/.config/nvim' },
            \ { 'p': '~/Projects' },
            \ { 's': '~/Desktop/stocks' },
            \ { 'z': '~/.zshrc' },
            \ { 'r': '~/Projects/personal/reddit-clone' }
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
      \ '                                                                                   ',
      \ ' _________________________________________________________________________________ ',
      \ '/ What is life if not the sum of a hundred daily thousand battles and decisions   \',
      \ '| to either gut it out or give up. This moment, when you dont feel like doing     |',
      \ '| the work, this is not a moment to be thrown-away. This is not a                 |',
      \ '| dress-rehearsal. This moment is your life as much as any other moment, so spend |',
      \ '\ it in a way that will make you proud                                            /',
      \ ' --------------------------------------------------------------------------------- ',
      \ '        \   ^__^                                                                   ',
      \ '         \  (oo)\_______                                                           ',
      \ '            (__)\       )\/\                                                       ',
      \ '                ||----w |                                                          ',
      \ '                ||     ||                                                          '
\ ]


"let g:startify_custom_header = [
      "\ '           $$\   $$\      $$$$$$\      $$$$$$\        $$\                       $$\      $$\ $$$$$$$\  ',
      "\ '           $$ |  $$ |    $$  __$$\    $$$ __$$\       $$ |                      $$$\    $$$ |$$  __$$\ ',
      "\ '$$\    $$\ $$ |  $$ |    \__/  $$ |   $$$$\ $$ |      $$$$$$$\  $$\   $$\       $$$$\  $$$$ |$$ |  $$ |',
      "\ '\$$\  $$  |$$$$$$$$ |     $$$$$$  |   $$\$$\$$ |      $$  __$$\ $$ |  $$ |      $$\$$\$$ $$ |$$$$$$$  |',
      "\ ' \$$\$$  / \_____$$ |    $$  ____/    $$ \$$$$ |      $$ |  $$ |$$ |  $$ |      $$ \$$$  $$ |$$  ____/ ',
      "\ '  \$$$  /        $$ |    $$ |         $$ |\$$$ |      $$ |  $$ |$$ |  $$ |      $$ |\$  /$$ |$$ |      ',
      "\ '   \$  /         $$ |$$\ $$$$$$$$\ $$\\$$$$$$  /      $$$$$$$  |\$$$$$$$ |      $$ | \_/ $$ |$$ |      ',
      "\ '    \_/          \__|\__|\________|\__|\______/       \_______/  \____$$ |      \__|     \__|\__|      ',
      "\ '                                                               $$\   $$ |                              ',
      "\ '                                                               \$$$$$$  |                              ',
      "\ '                                                                \______/                               '
"\ ]
