" Which key config
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

let g:which_key_map = {}

" single mappings

" comment
let g:which_key_map[';'] = ['<plug>NERDCommenterToggle', 'comment']

" search
let g:which_key_map['/'] = [':Rg', 'text Rg']

" terminal on buffer's current directory
let g:which_key_map["'"] = [':FloatermNew! --wintype=split --height=10 --postition=bottom --cmd=cd %:p:h' , 'terminal']
      
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

":CocList snippets

" b is for buffer
let g:which_key_map.b = {
  \ 'name': '+buffer',
  \ 'b': [':Buffers'                                 , 'open buffer'],
  \ 'd': [':Bdelete'                                 , 'delete buffer'],
  \ 'q': [':%bd'                                     , 'delete all buffers']
\ }

" f is for files
let g:which_key_map.f = {
  \ 'name': '+files',
  \ 'e': {
    \ 'name': '+emacs :P',
    \ 'c': [':PlugClean'                 , 'clean plugs'],
    \ 'd': [':e $MYVIMRC'                , 'open init file'],
    \ 'i': [':PlugInstall'               , 'install plugs'],
    \ 'r': [':source $MYVIMRC'           , 'source vimrc'],
    \ 'w': [':WakaTimeToday'             , 'show total coding activity for today'],
    \ 'z': [':e ~/.zshrc'                , 'open zshrc'],
    \ 'Z': [':!source ~/.zshrc'          , 'source zshrc']
  \ }
\ }


" g is for git 
let g:which_key_map.g = {
  \ 'name': '+git',
  \ 'b': [':Git blame'     ,'git blame'],
  \ 'c': [':Git commit'    , 'git commit'],
  \ 'd': [':Git diff'      , 'git diff'],
  \ 'l': [':Git log'       , 'git log'],
  \ 'r': [':Git rebase -i' , 'git rebase'],
  \ 's': [':LazyGit'       , 'lazygit'],
  \ 'B': [':GBrowse'       , 'open in browser'],
  \ 'h': [':Commits'       , 'git history'],
  \ 'H': [':BCommit!'      , 'git history for the file'],
  \ 'p': [':Git push'      , 'git push'],
  \ 'f': [':GFiles'        , 'show all git files'],
  \ 'm': [':GFiles?'       , 'modified git files'],
  \ 'C': [':LazyGitConfig' , 'lazygit config']
\ }


" l is for language server 
let g:which_key_map.l = {
  \ 'name': '+coc',
  \ 'A': ['<Plug>(coc-codeaction-selected)'            , 'code action selected'],
  \ 'a': ['<Plug>(coc-codeaction)'                     , 'code action'],
  \ 'd': ['<Plug>(coc-definition)'                     , 'go to definition(gd)'],
  \ 't': ['<Plug>(coc-type-definition)'                , 'type definition(gt)'],
  \ 'i': ['<Plug>(coc-implementation)'                 , 'implementation'],
  \ 'r': ['<Plug>(coc-references)'                     , 'references'],
  \ 'n': ['<Plug>(coc-diagnostic-prev)'                , 'next diagnostic'],
  \ 'p': ['<Plug>(coc-diagnostic-next)'                , 'previous diagnostic'],
  \ 'l': ['<C-u>CocList diagnostics<cr>'               , 'show all diagnostics'],
  \ 'e': ['<C-u>CocList extensions<cr>'                , 'manage extensions'],
  \ 'c': [':CocList commands'                          , 'show commands'],
  \ 'C': [':CocConfig'                                 , 'coc config'],
  \ 's': {
    \ 'name': '+snippets',
    \ 'l' : [':CocList snippets' , 'snippets']         ,
    \ 'c': ['<Plug>(coc-convert-snippet)'              , 'convert selected to snippet'],
    \ 'e': [':CocCommand snippets.editSnippets'        , 'edit snipets'],
    \ 'o': [':CocCommand snippets.openSnippetFiles'    , 'open snippet files'],
  \ },
  \ 'O': ['<C-u>CocList outline<cr>'                   , 'find symbol of current document'],
  \ 'S': ['<C-u>CocList -I symbols<cr>'                , 'search workspace symbols'],
  \ 'N': ['<C-u>CocNext<CR>'                           , 'do default action for next item'],
  \ 'P': ['<C-u>CocPrev<CR>'                           , 'do default action for previous item'],
  \ 'L': ['<C-u>CocListResume<CR>'                     , 'resume latest coc list']
\ }

" p is for project
" \ 't': [':NERDTreeToggle', 'open file tree<C-b>'],
let g:which_key_map.p = {
  \ 'name': '+project',
  \ 'f': [':Files'                                   , 'open file<C-f>'],
  \ 'p': [':FzfSwitchProject'                        , 'switch project'],
  \ 'w': [':Windows'                                 , 'search windows'],
  \ 't': [':RnvimrToggle'                            , 'open file tree<C-b>'],
  \ 'T': [':CocCommand explorer --preset floating'   , 'open floating file tree']
\ } 


" s is for search 
let g:which_key_map.s = {
  \ 'name': '+search',
  \ '/' : [':History/'         , 'search history'],
  \ 'c' : [':Commands'         , 'command'],
  \ 'a' : [':Ag'               , 'text Ag'],
  \ 'b' : [':BLines'           , 'seach in current buffer'],
  \ 'f' : [':Files'            , 'files'],
  \ 'h' : [':History'          , 'file history'],
  \ 'H' : [':History:'         , 'command history'],
  \ 'l' : [':Lines'            , 'lines'] ,
  \ 'p' : [':Helptags'         , 'help tags'] ,
  \ 'S' : [':Colors'           , 'color schemes'],
  \ 't' : [':Rg'               , 'text Rg'],
  \ 'y' : [':Filetypes'        , 'file types'],
  \ 'z' : [':FZF'              , 'FZF']
\ }

" S is for startify/sessions 
let g:which_key_map.S = {
  \ 'name': '+Startify',
  \ 'h': [':Startify', 'Home screen'],
  \ 'l': [':SLoad', 'load a session'],
  \ 's': [':SSave', 'save a session'],
  \ 'S': [':SSave!', 'save a session (no prompt)'],
  \ 'd': [':SDelete', 'delete a session'],
  \ 'D': [':SDelete!', 'delete a session (no prompt)'],
  \ 'c': [':SClose', 'close a session']
\ }

" t is for toggle
let g:which_key_map.t = {
  \ 'name': '+toggle',
  \ 'l': ['ChangeLineNumbering()'      , 'line number'],
  \ 'c': [':Codi'                      , 'turn on codi'],
  \ 'C': [':Codi!'                     , 'turn off codi'],
  \ 'p': ['<M-p>'                      , 'auto-pairs'],
  \ 'q': [':QuickScopeToggle'          , 'quick scope highlight'],
  \ 'g': [':GoldenRatioToggle'         , 'golden-ratio'],
  \ 'G': [':Goyo'                      , 'goyo']
\ }

" T is for terminal
let g:which_key_map.T = {
      \ 'name' : '+terminal' ,
      \ ',' : [
        \ ':FloatermNew' ,
        \ 'open floating terminal on project root'
      \ ],
      \ "'":  [
        \  ':FloatermNew! --cmd=cd %:p:h' ,
        \  'open floating terminal on buffer directory'
      \ ],
      \ ";":  [
        \  ':FloatermNew --wintype=split --height=10 --postition=bottom',
        \  'open split terminal on project root'
      \ ],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'b' : [':FloatermNew btm'                               , 'bottom'],
      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
      \ 'i' : [':FloatermNew iex'                               , 'iex'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ }

" q is for quitting
let g:which_key_map.q = {
  \ 'name': '+quit',
  \ 'q': [':qa'   , 'Close all files'],
  \ 'Q': [':qa!'  , 'Close all files without saving']
\ }

" r is for refactor
let g:which_key_map.r = {
  \ 'name': '+refactor',
  \ 'r': ['<Plug>(coc-rename)'                                     , 'rename (f2)'],
  \ 'F': [':CocCommand workspace.renameCurrentFile'                , 'rename current file'],
  \ 'i': ["CocAction('runCommand', 'editor.action.organizeImport')", 'organize imports'],
  \ 'p': {
      \ 'name': '+prettier',
      \ 'f': [':CocCommand prettier.formatFile'                    , 'format file (:Prettier)'],
      \ 's': ['<Plug>(coc-format-selected)'                        , 'format selected region'],
      \ 'b': ["CocAction('format')"                                , 'format buffer'],
  \ },
  \ 'f': {
      \ 'name': '+fix',
      \ 's': ['<Plug>(coc-codeaction-selected)'                    , 'refactor selected'],
      \ 'l': ['<Plug>(coc-codeaction)'                             , 'refactor line'],
      \ 'a': ['<Plug>(coc-fix-current)'                            , 'automatically fix current line']
  \ }
\ }



" w is for window 
let g:which_key_map.w = {
  \ 'name': '+window',
  \ 'd': [':q'       , 'quit'],
  \ 'D': [':q!'      , 'quit without saving'],
  \ '/': [':vsplit'  , 'split window right'],
  \ '-': [':split'   , 'split window below'],
  \ '=': ['<C-W>='   , 'equalize windows']
\ }

" W is for wiki 
let g:which_key_map.W = {
  \ 'name': '+vimwiki',
  \ 'd': {
    \ 'name': '+diary',
    \ 'i': ['<Plug>VimwikiDiaryIndex'             , 'diary index'],
    \ 'm': ['<Plug>VimwikiMakeTomorrowDiaryNote'  , 'diary for tomorrow'],
    \ 'n': ['<Plug>VimwikiDiaryNextDay'           , 'open next day'],
    \ 'p': ['<Plug>VimwikiDiaryPrevDay'           , 'open prev day'],
    \ 't': ['<Plug>VimwikiMakeDiaryNote'          , 'diary for today'],
    \ 'T': ['<Plug>VimwikiTabMakeDiaryNote'       , 'diary for today in new tab'],
    \ 'y': ['<Plug>VimwikiMakeYesterdayDiaryNote' , 'diary for yesterday'],
  \ },
  \ 'D': ['<Plug>VimwikiDeleteFile'               , 'delete current wiki file'],
  \ 'h': [':help vimwiki'                         , 'help'],
  \ 'l': {
    \ 'name': '+links',
    \ 'a': [':VimwikiGenerateLinks'               , 'insert links to all available wiki files'],
    \ 'c': [':VimwikiCheckLinks'                  , 'check links'],
    \ 'd': ['<Plug>VimwikiDiaryGenerateLinks'     , 'update diary links'],
    \ 't': [':VimwikiTOC'                         , 'update table of contents'],
  \ },
  \ 'p': [':InstantMarkdownPreview'               , 'markdown preview'],
  \ 'r': ['<Plug>VimwikiRenameFile'               , 'rename current wiki file'],
  \ 'w': ['<Plug>VimwikiIndex'                    , 'wiki index'],
  \ 'W': {                                        
      \ 'name': '+wiki',                          
      \ 'i': ['<Plug>VimwikiIndex'                , 'wiki index'],
      \ 't': ['<Plug>VimwikiTabIndex'             , 'wiki in new tab'],
  \ },
  \ '=': ['<Plug>VimwikiAddHeaderLevel'           , 'add header level'],
  \ '-': ['<Plug>VimwikiRemoveHeaderLevel'        , 'remove header level'],
  \ 't': {
    \ 'name': '+table',
    \ 'l': ['<Plug>VimwikiTableMoveColumnLeft'    , 'move current column to left'],
    \ 'r': ['<Plug>VimwikiTableMoveColumnRight'   , 'move current column to right'],
    \ '1': [':VimwikiTable 1'                     , 'create table with 1 row'],
    \ '2': [':VimwikiTable 2'                     , 'create table with 2 row'],
    \ '3': [':VimwikiTable 3'                     , 'create table with 3 row'],
    \ '4': [':VimwikiTable 4'                     , 'create table with 4 row'],
    \ '5': [':VimwikiTable 5'                     , 'create table with 5 row'],
  \ }
\ }


call which_key#register('<Space>', "g:which_key_map")
