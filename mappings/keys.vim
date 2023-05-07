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
nnoremap ,l 0v$hy<esc>oconsole.info(<c-r>", "<c-r>"")<esc>

" Console.log selected text
" ,l on visual mode
"vnoremap ,l y<esc>oconsole.log("<c-r>"", <c-r>")<esc>
vnoremap ,l y<esc>oconsole.info(<c-r>", "<c-r>"")<esc>

" search
"nnoremap <space>/ :Rg<CR>

" Toggle fold 
nnoremap <silent> <Space>tf @=(foldlevel('.')?'za':"\<Space>")<CR>
"vnoremap <Space>tf zf
vnoremap <Space>tf za

" Ctrl + s to save on insert mode
inoremap <silent><c-s> <esc>:w!<cr>
vnoremap <silent><c-s> :w!<cr>
nnoremap <silent><c-s> :w!<cr>


