" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" Better tabbing (won't lose selection)
" < and > to increase/decrease indentation
vnoremap < <gv
vnoremap > >gv

" Space tab in normal mode will move to text buffer
nnoremap <space><tab> <C-^>

" Logger mappings contains 2 versions:
" - whole line
" - visual mode which only logs the selected
" you can also add custom loggers and custom levels (info, error)
" I kept console to just log since you would usually use a custom logger like pino if levels are important to you but you can add more as well

" JS/TS
" ,l = console.log
nnoremap ,l 0v$hy<esc>oconsole.log(<c-r>", "<c-r>"")<esc>
"vnoremap ,l y<esc>oconsole.log("<c-r>"", <c-r>")<esc>
vnoremap ,l y<esc>oconsole.log(<c-r>", "<c-r>"")<esc>

" Elixir logging
" ,e = IO.inpect
nnoremap ,e 0v$hy<esc>oIO.inspect(<C-r>=substitute(@", '\n', '', 'g')<CR>, label: "
vnoremap ,e y<Esc>oIO.inspect(<C-r>=substitute(@", '\n', '', 'g')<CR>, label:"
" ,b = IO.inspect binding()
nnoremap ,b 0v$hy<esc>oIO.inspect binding()<esc>


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
