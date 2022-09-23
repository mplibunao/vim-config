" onedark.vim override: Don't set a background color when running in a terminal;
" I uncommented this but didn't do shit with coc. Leaving uncommented for now
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256
let g:airline_highlighting_cache=1

syntax on
colorscheme onedark


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

""" Customize colors
"func! s:my_colors_setup() abort
    "" this is an example
    "hi Pmenu ctermfg=Black ctermbg=White
    "hi PmenuSel ctermfg=Black ctermbg=White
    "hi FgCocErrorFloatBgCocFloating ctermfg=Black ctermbg=White guifg=White guibg=Black
"endfunc

"augroup colorscheme_coc_setup | au!
    "au ColorScheme * call s:my_colors_setup()
"augroup END
