" Which key config
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

let g:which_key_map = {}

" single mappings

" comment
let g:which_key_map[';'] = ['<plug>NERDCommenterToggle', 'comment']

" search
let g:which_key_map['/'] = [':Rg', 'text Rg']

" navigate to windows using space + window number
nnoremap <space>1 1<C-w>w
nnoremap <space>2 2<C-w>w
nnoremap <space>3 3<C-w>w
nnoremap <space>4 4<C-w>w
nnoremap <space>5 5<C-w>w
nnoremap <space>6 6<C-w>w
nnoremap <space>7 7<C-w>w
nnoremap <space>8 8<C-w>w
nnoremap <space>9 9<C-w>w
let g:which_key_map['1'] = 'which_key_ignore'
let g:which_key_map['2'] = 'which_key_ignore'
let g:which_key_map['3'] = 'which_key_ignore'
let g:which_key_map['4'] = 'which_key_ignore'
let g:which_key_map['5'] = 'which_key_ignore'
let g:which_key_map['6'] = 'which_key_ignore'
let g:which_key_map['7'] = 'which_key_ignore'
let g:which_key_map['8'] = 'which_key_ignore'
let g:which_key_map['9'] = 'which_key_ignore'

" p is for project
" \ 't': [':NERDTreeToggle', 'open file tree<C-b>'],
let g:which_key_map.p = {
  \ 'name': '+project',
  \ 'f': [':Files'                                   , 'open file<C-f>'],
  \ 'b': [':Buffers'                                 , 'open buffer'],
  \ 'w': [':Windows'                                 , 'search windows'],
  \ 't': [':CocCommand explorer'                     , 'open file tree<C-b>'],
  \ 'T': [':CocCommand explorer --preset floating'   , 'open floating file tree']
\ } 

" s is for search 
let g:which_key_map.s = {
  \ 'name': '+search',
  \ '/' : [':History/'     , 'search history'],
  \ 'c' : [':Commands'     , 'command'],
  \ 'a' : [':Ag'           , 'text Ag'],
  \ 'b' : [':BLines'       , 'seach in current buffer'],
  \ 'f' : [':Files'        , 'files'],
  \ 'h' : [':History'      , 'file history'],
  \ 'H' : [':History:'     , 'command history'],
  \ 'l' : [':Lines'        , 'lines'] ,
  \ 'p' : [':Helptags'     , 'help tags'] ,
  \ 's' : [':Snippets'     , 'snippets'],
  \ 'S' : [':Colors'       , 'color schemes'],
  \ 't' : [':Rg'           , 'text Rg'],
  \ 'y' : [':Filetypes'    , 'file types'],
  \ 'z' : [':FZF'          , 'FZF']
\ }

" t is for toggle
let g:which_key_map.t = {
  \ 'name': '+toggle',
  \ 'l': ['ChangeLineNumbering()', 'line number'],
  \ 'p': ['<M-p>', 'auto-pairs'],
  \ 's': [':set smartcase!', 'smartcase']
\ }

" g is for git 
let g:which_key_map.g = {
  \ 'name': '+git',
  \ 'b': [':Git blame'     ,'git blame'],
  \ 'c': [':Git commit'    , 'git commit'],
  \ 'd': [':Git diff'      , 'git diff'],
  \ 'l': [':Git log'       , 'git log'],
  \ 'r': [':Git rebase -i' , 'git rebase'],
  \ 's': [':Git'           , 'git status'],
  \ 'B': [':GBrowse'       , 'open in browser'],
  \ 'h': [':Commits'       , 'git history'],
  \ 'H': [':BCommit!'      , 'git history for the file'],
  \ 'p': [':Git push'      , 'git push'],
  \ 'f' : [':GFiles'       , 'show all git files'],
  \ 'm' : [':GFiles?'      , 'modified git files']
\ }
" c is for coc
let g:which_key_map.c = {
  \ 'name': '+coc',
  \ 'd': ['<Plug>(coc-definition)', 'go to definition(gd)'],
  \ 't': ['<Plug>(coc-type-definition)', 'type definition(gt)'],
  \ 'i': ['<Plug>(coc-implementation)', 'implementation'],
  \ 'r': ['<Plug>(coc-references)', 'references'],
  \ 'n': ['<Plug>(coc-diagnostic-prev)', 'next diagnostic'],
  \ 'p': ['<Plug>(coc-diagnostic-next)', 'previous diagnostic'],
  \ 'l': ['<C-u>CocList diagnostics<cr>', 'show all diagnostics'],
  \ 'e': ['<C-u>CocList extensions<cr>', 'manage extensions'],
  \ 'c': [':CocList commands', 'show commands'],
  \ 'o': ['<C-u>CocList outline<cr>', 'find symbol of current document'],
  \ 's': ['<C-u>CocList -I symbols<cr>', 'search workspace symbols'],
  \ 'N': ['<C-u>CocNext<CR>', 'do default action for next item'],
  \ 'P': ['<C-u>CocPrev<CR>', 'do default action for previous item'],
  \ 'L': ['<C-u>CocListResume<CR>', 'resume latest coc list']
\ }

" r is for refactor
let g:which_key_map.r = {
  \ 'name': '+refactor',
  \ 'r': ['<Plug>(coc-rename)', 'rename(f2)'],
  \ 'F': [':CocCommand workspace.renameCurrentFile', 'rename current file'],
  \ 'i': ["CocAction('runCommand', 'editor.action.organizeImport')", 'organize imports'],
  \ 'p': {
      \ 'name': '+prettier',
      \ 'f': [':CocCommand prettier.formatFile', 'format file (:Prettier)'],
      \ 's': ['<Plug>(coc-format-selected)', 'format selected region'],
      \ 'b': ["CocAction('format')", 'format buffer'],
  \ },
  \ 'f': {
      \ 'name': '+fix',
      \ 's': ['<Plug>(coc-codeaction-selected)', 'refactor selected'],
      \ 'l': ['<Plug>(coc-codeaction)', 'refactor line'],
      \ 'a': ['<Plug>(coc-fix-current)', 'automatically fix current line']
  \ }
\ }

" f is for files
let g:which_key_map.f = {
  \ 'name': '+files',
  \ 'v': {
    \ 'name': '+vim',
    \ 'i': [':e $MYVIMRC', 'open init file']
  \ }
\ }


" w is for window 
let g:which_key_map.w = {
  \ 'd': [':q', 'quit'],
  \ '/': [':vsplit', 'split window right'],
  \ '-': [':split', 'split window below']
\ }

call which_key#register('<Space>', "g:which_key_map")
