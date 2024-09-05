" coc config

let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-elixir',
      \ 'coc-tsserver',
      \ 'coc-snippets',
      \ 'coc-eslint',
      \ 'coc-prettier',
      \ 'coc-yaml',
      \ 'coc-deno',
      \ 'coc-sh',
      \ 'coc-marketplace',
      \ 'coc-yank',
      "\ 'coc-tailwindcss',
      \ '@yaegassy/coc-tailwindcss3',
      \ 'coc-emmet',
      \ 'coc-react-refactor',
      "\ 'coc-tabnine',
      \ 'coc-markdownlint',
      \ 'coc-css',
      \ 'coc-pyright',
      \ 'coc-svg',
      \ 'coc-lightbulb',
      \ 'coc-diagnostic',
      \ 'coc-prisma',
      \ 'coc-pairs'
      "\ 'coc-import-cost',
      "\ 'coc-sql',
      "\ 'coc-git'
\ ]

" Commands
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

"Fixes endwise not working with coc
let g:endwise_no_mappings = v:true

" Use tab to trigger completion with characters ahead and navigate
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" Adds snippet functinality
"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? coc#_select_confirm() :
      "\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
" Update changed stuff
" :h coc-completion-example
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackSpace() ? "\<Tab>" :
      \ coc#refresh()

" Updated <S-Tab> mapping for backward navigation in completion
inoremap <expr><S-TAB> coc#pum#visible() ? "\<C-p>" : "\<C-h>"

function! CheckBackSpace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

"This fixes endwise not working with coc
inoremap <expr> <Plug>CustomCocCR pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
imap <CR> <Plug>CustomCocCR<Plug>DiscretionaryEnd

" Use <cr> (carriage return i think) to confirm completion, `<C-g> means break
" undo chain at current position`
" Coc only does snippet and additional edit on confirm
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
"inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm()
				"\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Remap keys for gotos
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
" Shows types, tailwind classes wtf didn't know this
nnoremap <silent> K :call <SID>show_documentation()<CR>


function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif CocAction('hasProvider', 'hover')
    call CocAction('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
" Note: Don't change this to <SID>show_documentation() as it keeps opening
" random stuff even when mouse is off-screen
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

augroup lsp
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')

    "disables other completion sources for elixir since do->end completion relies on lsp which is slow ruining the dx
    "https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources#completion-sources
    "we instead use vim-endwise for this. much faster and doesn't impose limitations
    "autocmd FileType elixir let b:coc_disabled_sources = ['around', 'buffer', 'file']

    " Update signature help on jump placeholder
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
    " organize import
    " I don't know wtf is wrong but I inconsistently get errors on tsx files
    "autocmd FileType typescript BufWritePre * :call CocAction('runCommand', 'editor.action.organizeImport')
    autocmd FileType scss setl iskeyword+=@-@
    autocmd FileType css setl iskeyword+=-
    " To format on save prisma files
    autocmd FileType prisma BufWritePost * call CocActionAsync('format')
augroup end

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
" Need this for saving
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Explorer
"let g:coc_explorer_global_presets = {
"\   '.vim': {
"\     'root-uri': '~/.vim',
"\   },
"\   'tab': {
"\     'position': 'tab',
"\     'quit-on-open': v:true,
"\   },
"\   'floating': {
"\     'position': 'floating',
"\     'open-action-strategy': 'sourceWindow',
"\   },
"\   'floatingTop': {
"\     'position': 'floating',
"\     'floating-position': 'center-top',
"\     'open-action-strategy': 'sourceWindow',
"\   },
"\   'floatingLeftside': {
"\     'position': 'floating',
"\     'floating-position': 'left-center',
"\     'floating-width': 50,
"\     'open-action-strategy': 'sourceWindow',
"\   },
"\   'floatingRightside': {
"\     'position': 'floating',
"\     'floating-position': 'right-center',
"\     'floating-width': 50,
"\     'open-action-strategy': 'sourceWindow',
"\   },
"\   'simplify': {
"\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
"\   }
"\ }

"nmap <C-b> :CocCommand explorer<CR>
""nmap <space>f :CocCommand explorer --preset floating<CR>
"autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

"" CoC Explorer Settings
"" Use coc explorer when opening directory instead of netrw
"augroup MyCocExplorer
  "autocmd!
  "autocmd VimEnter * sil! au! F
  "" set window status line
  "autocmd FileType coc-explorer setl statusline=File-Explorer
  ""quit explorer whein it's the last
  "autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
  "" Make sure nothing opened in coc-explorer buffer
  "autocmd BufEnter * if bufname('#') =~# "\[coc-explorer\]-." && winnr('$') > 1 | b# | endif
  "" open if directory specified or if buffer empty
  "autocmd VimEnter * let d = expand('%:p')
    "\ | if argc() == 0
      "\ | exe 'CocCommand explorer --quit-on-open --sources buffer+,file+'
    "\ | elseif isdirectory(d) || (bufname()=='')
      "\ | silent! bd
      "\ | exe 'CocCommand explorer --quit-on-open --sources buffer+,file+ ' . d
      "\ | exe 'cd ' . d
    "\ | else
      "\ | cd %:p:h
    "\ | endif
  "" cd after open
  "autocmd User CocExplorerOpenPost let dir = getcwd() | call CocActionAsync("runCommand", "explorer.doAction", "closest", {"name": "cd", "args": [dir]})
"augroup END
