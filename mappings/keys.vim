" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" Better tabbing (won't lose selection)
" < and > to increase/decrease indentation
vnoremap < <gv
vnoremap > >gv

" Space tab in normal mode will move to text buffer
nnoremap <space><tab> <C-^>

" Console.log whole line
" ,l
nnoremap ,l 0v$hy<esc>oconsole.log("<c-r>"", <c-r>"); // eslint-disable-line no-console<esc>

" Console.log selected text
" ,l on visual mode
vnoremap ,l y<esc>oconsole.log("<c-r>"", <c-r>"); // eslint-disable-line no-console<esc>

" search
"nnoremap <space>/ :Rg<CR>

" Toggle fold 
nnoremap <silent> <Space>tf @=(foldlevel('.')?'za':"\<Space>")<CR>
"vnoremap <Space>tf zf
vnoremap <Space>tf za


" Copilot
" Cycle through suggestions
imap <C-]> <Plug>(copilot-next)
imap <C-[> <Plug>(copilot-previous)
" Disable tab so it doesn't conflict with completion/snippets
imap <silent><script><expr> <C-a> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
imap <C-`> <Plug>(copilot-dismiss)
