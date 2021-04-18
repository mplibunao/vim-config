let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
" auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ts syntax (is this redundant)
"Plug 'leafgarland/typescript-vim'

" spacemacs space combo
Plug 'liuchengxu/vim-which-key'

" File tree
" Plug 'scrooloose/nerdtree'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" file type icons
Plug 'ryanoasis/vim-devicons'
" comment
Plug 'scrooloose/nerdcommenter'

" Git
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
"Plug 'junegunn/gv.vim'

" language pack
Plug 'sheerun/vim-polyglot'

" Auto pairs for () [] {}
Plug 'jiangmiao/auto-pairs'
"Plug 'junegunn/rainbow_parentheses.vim'

" Theme
Plug 'joshdick/onedark.vim'

" Status line
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Starts in project root directory
Plug 'airblade/vim-rooter'

" TS Syntax
Plug 'HerringtonDarkholme/yats.vim'

" Color
"Plug 'norcalli/nvim-colorizer.lua'

" Home screen and sessions
Plug 'mhinz/vim-startify'

" Jump to any location specified by 2 char
Plug 'justinmk/vim-sneak'

" Highlight unique characters in every word to help navigating w/ f,F,t,T
Plug 'unblevable/quick-scope' 

" Terminal inside vim
Plug 'voldikss/vim-floaterm'

" Ranger
Plug 'kevinhwang91/rnvimr'

" Golden ratio
Plug 'https://github.com/roman/golden-ratio'

" Time tracking in vim
Plug 'wakatime/vim-wakatime'

" Measures vim startup time
Plug 'dstein64/vim-startuptime'

" Snippets
Plug 'honza/vim-snippets'

" Interactive repl
Plug 'metakirby5/codi.vim'

" Wiki
Plug 'vimwiki/vimwiki'

" Distraction-free writing in Vim
Plug 'junegunn/goyo.vim'

Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
call plug#end()
