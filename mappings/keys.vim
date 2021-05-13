" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" Better tabbing (won't lose selection)
vnoremap < <gv
vnoremap > >gv

" TAB in general mode will move to text buffer
nnoremap <space><tab> <C-^>

" Console.log whole line
nnoremap ,l 0v$hy<esc>oconsole.log("<c-r>"", <c-r>"); // eslint-disable-line no-console<esc>

" Console.log selected text
vnoremap ,l y<esc>oconsole.log("<c-r>"", <c-r>"); // eslint-disable-line no-console<esc>

" search
"nnoremap <space>/ :Rg<CR>
