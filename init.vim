syntax on

set noerrorbells
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab " always use spaces instead of tab characters
set smartindent
set nu
set smartcase
set noswapfile
set incsearch
set timeoutlen=100
set smarttab
set cindent
set relativenumber



" Automatically install Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'mbbill/undotree'
Plug 'liuchengxu/vim-which-key'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'https://github.com/tomasiser/vim-code-dark.git'

call plug#end()

colorscheme codedark
set background=dark




" rg make it search from the root directory (think)
if executable('rg')
  let g:rg_derive_root='true'
endif

" ctrl p make it ignore files in .gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsiz = 25

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')





" Open nerd tree
nmap <C-b> :NERDTreeToggle<CR>

let g:NERDTreeIgnore = ['^node_modules$']

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()




" coc config
let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-elixir',
      \ 'coc-graphql',
      \ 'coc-tailwindcss',
      \ 'coc-tsserver',
      \ 'coc-snippets',
      \ 'coc-pairs',
      \ 'coc-eslint',
      \ 'coc-prettier',
   \ ]



" Commands
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
nmap <C-]> :CocAction('fold', <f-args>)
nmap <C-[> :CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')


" COC stuff
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

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

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use tab to trigger completion with characters ahead and navigate
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Use <c-space> to trigger completion
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> (carriage return i think) to confirm completion, `<C-g> means break
" undo chain at current position`
" Coc only does snippet and additional edit on confirm
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')




" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Toggle line numbers
function! ChangeLineNumbering()
if &number == 0 && &relativenumber == 0
    setlocal number!
    echo "nu:1/rnu:0"
elseif &number == 1 && &relativenumber == 0
    setlocal relativenumber!
    echo "nu:1/rnu:1"
elseif &number == 1 && &relativenumber == 1
    setlocal number!
    echo "nu:0/rnu:1"
else
    setlocal relativenumber!
    echo "nu:0/rnu:0"
endif
endfunction



" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>



" Which key config
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

let g:which_key_map = {}

" single mappings
" search
nnoremap <leader>/ :Rg<SPACE>
" comment
let g:which_key_map[';'] = ['<plug>NERDCommenterToggle', 'comment']

" p is for project
let g:which_key_map.p = {
  \ 'name': '+project',
  \ 'f': ['<C-p>', 'open file<C-p>'],
  \ 't': ['NERDTreeToggle<CR>', 'open file tree<C-b>']
\ } 

" s is for show 
let g:which_key_map.s = {
  \ 'name': '+show',
  \ 'd': [':call <SID>show_documentation()<CR>', 'documentation'],
  \ 'f': ["CocAction('fold', <f-args>)", 'fold']
\ }

" t is for toggle
let g:which_key_map.t = {
  \ 'name': '+toggle',
  \ 'l': ['ChangeLineNumbering()', 'line number']
\ }

" g is for go-to
let g:which_key_map.g = {
  \ 'name': '+go-to',
  \ 'd': ['<Plug>(coc-definition)', 'go to definition(gd)'],
  \ 't': ['<Plug>(coc-type-definition)', 'type definition'],
  \ 'i': ['<Plug>(coc-implementation)', 'implementation'],
  \ 'r': ['<Plug>(coc-references)', 'references'],
  \ 'n': ['<Plug>(coc-diagnostic-prev)', 'next diagnostic'],
  \ 'p': ['<Plug>(coc-diagnostic-next)', 'previous diagnostic']
\ }

" r is for refactor
let g:which_key_map.r = {
  \ 'name': '+refactor',
  \ 'r': ['<Plug>(coc-rename)', 'rename(f2)'],
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
  \ },
\ }


" q is for quitters
let g:which_key_map.q = {
  \ 'q': [':q', 'quit'],
  \ 's': [':wq', 'save and quit'],
  \ '!': [':q!', 'quit without saving']
\ }

call which_key#register('<Space>', "g:which_key_map")


