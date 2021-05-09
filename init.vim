source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/functions/index.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/mappings/whichkey.vim
source $HOME/.config/nvim/mappings/keys.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/plug-config/coc.vim
"source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/themes/statusline.vim
source $HOME/.config/nvim/plug-config/fzf.vim
"luafile $HOME/.config/nvim/lua/plug-colorizer.lua
"source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/snippets.vim
source $HOME/.config/nvim/plug-config/vimwiki.vim
source $HOME/.config/nvim/plug-config/fzf-project.vim
source $HOME/.config/nvim/plug-config/markdown-preview.vim

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Toggle syntax highlighting
"function! SyntaxHighlighting()
"if exists("g:syntax_on")
    ":syntax off
"else
    ":syntax on
"endif
"endfunction
